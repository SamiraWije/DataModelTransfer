/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeltransferxsl;

import java.io.File;
import java.io.FileOutputStream;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
/**
 *
 * @author USER
 */
public class ModelTransferXSL {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        TransformerFactory tFactory = TransformerFactory.newInstance();
        
        try {
             
            Transformer transformer = tFactory.newTransformer(new StreamSource(new File("src\\data\\newstylesheet.xsl")));
            FileOutputStream fos = new FileOutputStream("src\\data\\tranformed.xml");
            StreamResult sr = new StreamResult(fos);
            StreamSource ss = new StreamSource(new File("src\\data\\article.xml"));
            transformer.transform(ss, sr);
            System.out.println("Done");
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
