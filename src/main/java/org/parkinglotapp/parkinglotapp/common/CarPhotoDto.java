package org.parkinglotapp.parkinglotapp.common;

public class CarPhotoDto {

     Long id;
 String filename;
 String fileType;
 byte[] fileContent;

    public CarPhotoDto(Long id, String filename, String fileType, byte[] fileContent) {
        this.id = id;
        this.filename = filename;
        this.fileType = fileType;
        this.fileContent = fileContent;
    }

    public String getFileType() {
        return "";
    }

    public int getFileContent() {
        return 0;
    }
}
