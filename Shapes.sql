create DATABASE ShapeCode

use ShapeCode

create table Shapes(
	shape_ID INT PRIMARY KEY IDENTITY,
	shape_name NVARCHAR(255),
	shape_data varchar(max),
	shape_render varchar(max),
	upload_date DATETIME DEFAULT GETDATE()
	);

insert into Shapes (shape_name, shape_data, shape_render)
values ('Sphere', 	'//Sphere object data
	ShapeData sphere = ShapeGenerator::makeSphere();

	unsigned int sphereVBO{}, sphereVAO;
	glGenVertexArrays(1, &sphereVAO);
	glGenBuffers(1, &sphereVBO);

	glBindVertexArray(sphereVAO);
	glBindBuffer(GL_ARRAY_BUFFER, sphereVBO);
	glBufferData(GL_ARRAY_BUFFER, sphere.vertexBufferSize() + sphere.indexBufferSize(), 0, GL_STATIC_DRAW);

	currentOffset = 0;

	glBufferSubData(GL_ARRAY_BUFFER, currentOffset, sphere.vertexBufferSize(), sphere.vertices);
	currentOffset += sphere.vertexBufferSize();

	sphereIndexByteOffset = currentOffset;

	glBufferSubData(GL_ARRAY_BUFFER, currentOffset, sphere.indexBufferSize(), sphere.indices);

	sphereNumIndices = sphere.numIndices;

	glEnableVertexAttribArray(0);
	glEnableVertexAttribArray(1);
	glEnableVertexAttribArray(2);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, VERTEX_BYTE_SIZE, (void*)0);
	glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, VERTEX_BYTE_SIZE, (void*)(sizeof(float) * 3));
	glVertexAttribPointer(2, 3, GL_FLOAT, GL_FALSE, VERTEX_BYTE_SIZE, (void*)(sizeof(float) * 6));
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, sphereVBO);', 'for (unsigned int i = 0; i < 1; i++)
		{
			model = model = glm::mat4(1.0f);//make sure to initialize matrix to identity matrix first	
			model = glm::translate(model, spherePositions[i]);//get positions
			model = glm::scale(model, glm::vec3(0.7f)); // Make it a smaller sphere
			lightingShader.setMat4("model", model);//set shaders
			//draw sphere
			glDrawElements(GL_TRIANGLES, sphereNumIndices, GL_UNSIGNED_SHORT, (void*)sphereIndexByteOffset);');



insert into Shapes (shape_name, shape_data, shape_render)
values('cylinder', '		glGenVertexArrays(1, &cylinderVAO);
		glBindVertexArray(cylinderVAO);
		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)0);
		glEnableVertexAttribArray(0);
		glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)(3 * sizeof(float)));
		glEnableVertexAttribArray(1);
		glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)(6 * sizeof(float)));
		glEnableVertexAttribArray(2);
		
		//Add texture
		glActiveTexture(GL_TEXTURE0);
		glBindTexture(GL_TEXTURE_2D, cup);
		glBindVertexArray(cylinderVAO);', '		//set size, position and lighting shader
		model = glm::mat4(1.0f); // make sure to initialize matrix to identity matrix first		
		model = glm::translate(model, glm::vec3(-0.95f, 0.89f, -1.0f));
		model = glm::scale(model, glm::vec3(1.5f));
		lightingShader.setMat4("model", model);
		static_meshes_3D::Cylinder C(0.5, 20, 1.5, true, true, true);
		C.render();');



insert into Shapes (shape_name, shape_data, shape_render)
values('Plane', 'ShapeData plane = ShapeGenerator::makePlane(20);

	unsigned int planeVBO{}, planeVAO, planeVAO2;
	glGenVertexArrays(1, &planeVAO);
	glGenBuffers(1, &planeVBO);

	glBindVertexArray(planeVAO);
	glBindBuffer(GL_ARRAY_BUFFER, planeVBO);
	glBufferData(GL_ARRAY_BUFFER, plane.vertexBufferSize() + plane.indexBufferSize(), 0, GL_STATIC_DRAW);

	GLsizeiptr currentOffset = 0;

	glBufferSubData(GL_ARRAY_BUFFER, currentOffset, plane.vertexBufferSize(), plane.vertices);
	currentOffset += plane.vertexBufferSize();

	planeIndexByteOffset = currentOffset;

	glBufferSubData(GL_ARRAY_BUFFER, currentOffset, plane.indexBufferSize(), plane.indices);

	planeNumIndices = plane.numIndices;

	glEnableVertexAttribArray(0);
	glEnableVertexAttribArray(1);
	glEnableVertexAttribArray(2);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, VERTEX_BYTE_SIZE, (void*)0);
	glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, VERTEX_BYTE_SIZE, (void*)(sizeof(float) * 3));
	glVertexAttribPointer(2, 3, GL_FLOAT, GL_FALSE, VERTEX_BYTE_SIZE, (void*)(sizeof(float) * 6));
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, planeVBO);', '		// setup to draw plane2 floor
		glActiveTexture(GL_TEXTURE0);
		glBindTexture(GL_TEXTURE_2D, floor);
		glBindVertexArray(planeVAO);
		model = model = glm::mat4(4.0f);
		model = glm::translate(model, glm::vec3(-0.5f, -1.0f, -1.0f));
		model = glm::scale(model, glm::vec3(0.28f)); // Make it a smaller plane
		lightingShader.setMat4("model", model);

		// draw plane
		glDrawElements(GL_TRIANGLES, planeNumIndices, GL_UNSIGNED_SHORT, (void*)planeIndexByteOffset);')


insert into Shapes (shape_name, shape_data, shape_render)
values('Cube', 	'unsigned int VBO, cubeVAO;
	glGenVertexArrays(1, &cubeVAO);
	glGenBuffers(1, &VBO);

	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

	glBindVertexArray(cubeVAO);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)0);
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)(3 * sizeof(float)));
	glEnableVertexAttribArray(1);
	glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)(6 * sizeof(float)));
	glEnableVertexAttribArray(2);', 		'// render rectangles
		glBindVertexArray(cubeVAO);
		for (unsigned int i = 0; i < 3; i++)
		{
			// calculate the model matrix for each object and pass it to shader before drawing
			glm::mat4 model = glm::mat4(1.0f);
			model = glm::translate(model, cubePositions[i]);
			float angle = 0.0f * i;
			model = glm::rotate(model, glm::radians(angle), glm::vec3(1.0f, -5.3f, 0.5f));
			lightingShader.setMat4("model", model);

			glDrawArrays(GL_TRIANGLES, 0, 36);
		}')



insert into Shapes (shape_name, shape_data, shape_render)
values('Light Cube', 	'unsigned int lightCubeVAO;
	glGenVertexArrays(1, &lightCubeVAO);
	glBindVertexArray(lightCubeVAO);

	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	// note that we update the lamps position attributes stride to reflect the updated buffer data
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)0);
	glEnableVertexAttribArray(0);', '		// we now draw as many light bulbs as we have point lights.
		glBindVertexArray(lightCubeVAO);
		for (unsigned int i = 0; i < 5; i++)
		{
			model = glm::mat4(2.0f);
			model = glm::translate(model, pointLightPositions[i]);
			model = glm::scale(model, glm::vec3(0.5f)); // Make it a smaller cube
			lightCubeShader.setMat4("model", model);
			glDrawArrays(GL_TRIANGLES, 0, 36);
		}')



select*from Shapes

