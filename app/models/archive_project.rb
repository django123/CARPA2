class ArchiveProject < Archive
  belongs_to :project
  has_attached_file :file
  validates_attachment_content_type :file, content_type: [
      "application/pdf", "application/msword",
      "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
      "application/vnd.oasis.opendocument.text",
      "application/vnd.ms-excel",
      "application/vnd.ms-office",
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
      "application/vnd.oasis.opendocument.spreadsheet","image/jpeg",
      "image/png",
      "image/jpg",
      "image/png",
      "application/vnd.ms-ppt","application/pptx"
  ]
end