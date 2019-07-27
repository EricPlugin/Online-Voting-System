package controller;

import bean.Player;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import service.PlayerService;

import javax.servlet.http.HttpServletRequest;
import java.io.*;

@Controller
public class FileController {
    @Autowired
    HttpServletRequest request;
    @Autowired
    PlayerService playerService;
    @RequestMapping("/pictrue_opload")
    @ResponseBody
    public boolean test(@RequestParam("files") MultipartFile[] files) throws IOException {
        boolean res = false;
        Player player = playerService.doSelectLastPlayer();
        for(MultipartFile file : files){
            String fileName = file.getOriginalFilename();
            System.out.print("文件："+fileName+" 上传成功");
            String path = request.getServletContext().getRealPath("/")+"player_images/"+player.getPlayer_id()+".jpg";
            try {
                InputStream in = file.getInputStream();
                byte[] buffer = new byte[1024];
                int len = 0;
                File file_1 = new File(path);
                File fileParent = file_1.getParentFile();
                if (!fileParent.exists()) {
                    fileParent.mkdirs();
                }
                OutputStream out = new FileOutputStream(path);
                while ((len = in.read(buffer)) != -1) {
                    out.write(buffer, 0, len);
                }
                out.close();
                in.close();
                res = true;
            } catch (Exception e) {
                System.out.println("----------" + path +"文件上传失败————————");
                res = false;
            }
        }
        return res;
    }

}
