use ProgramFiles

CREATE TABLE ProgramFiles (
    file_id INT PRIMARY KEY IDENTITY,
    file_name NVARCHAR(255),
    file_data VARBINARY(MAX),
    upload_date DATETIME DEFAULT GETDATE()
);


INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'source', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\Source.cpp', SINGLE_BLOB) AS FileData;


INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'ShapeGenerator.cpp', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\ShapeGenerator.cpp', SINGLE_BLOB) AS FileData;


INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'Camera.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\camera.h', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'cylinder.cpp', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\cylinder.cpp', SINGLE_BLOB) AS FileData;

select *from ProgramFiles
INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'cylinder.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\cylinder.h', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'glad.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\glad.h', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'glad.c', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\glad.c', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'glew32.dll', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\glew32.dll', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'linmath.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\linmath.h', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'mesh.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\mesh.h', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'shader.cpp', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\shader.cpp', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'shader.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\shader.h', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'shader.hpp', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\shader.hpp', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'shapeData.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\ShapeData.h', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'shapeGenerator.cpp', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\ShapeGenerator.cpp', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'shapeGenerator.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\ShapeGenerator.h', SINGLE_BLOB) AS FileData;


INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'staticMesh3D.cpp', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\staticMesh3D.cpp', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'staticMesh3D.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\staticMesh3D.h', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'staticMeshIndexed3D.cpp', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\staticMeshIndexed3D.cpp', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'staticMeshIndexed3D.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\staticMeshIndexed3D.h', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'stb_image.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\stb_image.h', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'vertexBufferObject.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\vertexBufferObject.h', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'vertexBufferObject.cpp', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\vertexBufferObject.cpp', SINGLE_BLOB) AS FileData;

INSERT INTO ProgramFiles (file_name, file_data)
SELECT 'vertex.h', BulkColumn
FROM OPENROWSET(BULK 'C:\Users\crode\Downloads\OpenGLSample22\OpenGLSample\OpenGLSample\Vertex.h', SINGLE_BLOB) AS FileData;

select * from ProgramFiles

