//
//  main.swift
//  PerfectTemplate
//
//  Created by Kyle Jessup on 2015-11-05.
//	Copyright (C) 2015 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//
import MySQL

let testHost = "127.0.0.1"
let testUser = "root"
// PLEASE change to whatever your actual password is before running these tests
let testPassword = ""

let QUERY_CREATE_TABLE = "CREATE TABLE `actividades` ( `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT, " +
	"`url_es` VARCHAR(255) NOT NULL DEFAULT '', " +
	"`url_en` VARCHAR(255) NOT NULL DEFAULT '', " +
	"`titulo_es` VARCHAR(255) NOT NULL DEFAULT '', " +
	"`titulo_en` VARCHAR(255) NOT NULL DEFAULT '', " +
	"`meta_es` VARCHAR(255) NOT NULL DEFAULT '', " +
	"`meta_en` VARCHAR(255) NOT NULL DEFAULT '', " +
	"`fecha` DATE NOT NULL, " +
	"`parrafo_es` VARCHAR(4000) NOT NULL DEFAULT '', " +
	"`parrafo_en` VARCHAR(4000) NOT NULL DEFAULT '', " +
	"`texto_es` TEXT NOT NULL, " +
	"`texto_en` TEXT NOT NULL, " +
	"`tecnica_es` VARCHAR(4000) NOT NULL DEFAULT '', " +
	"`tecnica_en` VARCHAR(4000) NOT NULL DEFAULT '', " +
	"PRIMARY KEY (`id`) " +
	") ENGINE=MyISAM DEFAULT CHARSET=utf8;"

let QUERY_INSERT = "INSERT INTO `actividades` (`id`, `url_es`, `url_en`, `titulo_es`, `titulo_en`, `meta_es`, `meta_en`, `fecha`, `parrafo_es`, `parrafo_en`, `texto_es`, `texto_en`, `tecnica_es`, `tecnica_en`)" +
	"VALUES (1, 'Les archives du Grand-Hornu', " +
	"'url_en', " +
	"'“Les archives du Grand-Hornu” Christian Boltanski - 1997 - A toutes les morts.', " +
	"'', " +
	"'Muro de más de 40 metros de longitud y de casi 5 metros de altura, formado por 2678 cajas de hierro blanco oxidado que Christian Boltanski realiza como reflexión a la desaparición de los casi 3.000 mineros adolescentes en las minas de carbón de Grand-Horn', " +
	"'', " +
	"'2017-01-23', " +
	"'Muro de más de 40 metros de longitud y de casi 5 metros de altura, formado por 2678 cajas de hierro blanco oxidado que Christian Boltanski realiza como reflexión a la desaparición de los casi 3.000 mineros adolescentes en las minas de carbón de Grand-Hornu.', " +
	"'', " +
	"'Muro de más de 40 metros de longitud y de casi 5 metros de altura, formado por 2678 cajas de hierro blanco oxidado que Christian Boltanski realiza como reflexión a la desaparición de los casi 3.000 mineros adolescentes en las minas de carbón de Grand-Hornu. Boltanski da nombre a cada uno de estos mineros como forma de traer a la vida cada una de sus historias individuales. \\nObra fechada en 1997 y realizada en tres dimensiones de Christian Boltanski (1944, París). \\nChristian Boltanski es un artista francés cuyo trabajo se ha centrado siempre en su preocupación por la memoria, la muerte, el pasado, el inventario y el olvido. \\n\\n“Les registres de Grand-Hornu” es una reflexión sobre la desaparición de casi 3.000 mineros adolescentes en las minas de Grand-Hornu. \\n\\nBoltanski cree en la importancia del nombre. No le parecía justo que se hablara de 5000 mineros menores de edad. No eran anónimos. En esta pieza se recuerda que cada uno de estos adolescentes existieron y existen. \\n\\nLos nombres de casi 3.000 de ellos se muestran en las etiquetas de las cajas de galletas oxidadas. Estas cajas a menudo se utilizan para almacenar documentos personales y fotos de la familia guardadas detrás de un armario o debajo de la cama. Estos objetos están arraigados a nuestras vidas, a nuestra memoria colectiva. El conjunto de la vida de un hombre puede estar en una de estas cajas. Con esta instalación el artista da a los mineros un nombre y un rostro. Explicar que 5.000 mineros vivieron y trabajaron en las minas de Grand-Hornu es un hecho histórico anónimo, pero al llamar a los mineros por su nombre, sus historias individuales vuelven a la vida. \\n\\nLas 650 fotografías fueron tomadas al azar de los archivos de la mina, así como los nombres pegados a las cajas, que no tienen un orden preestablecido. \\n\\nMuro formado por 2678 cajas de hierro blanco oxidado. Cada caja se etiqueta con un nombre o una reproducción fotográfica. \\nLa obra está iluminada por una hilera de lámparas de despacho dispuestas encima del muro en toda su longitud. \\n\\nMateriales: Hierro blanco oxidado. Fotografías en blanco y negro. Etiquetas. Lámparas de despacho \\n\\nDimensiones: 472 x 4015 x 19 cm \\nDimensiones de cada caja: 35.5 x 19 x 19 cm \\n\\nPropiedad: Comprada en 1998 por el Museo de Arte Contemporáneo de Grand-Hornu, propiedad de la Federación Wallonie-Bruxelles (Bélgica). ', " +
	"'Muro de más de 40 metros de longitud y de casi 5 metros de altura, formado por 2678 cajas de hierro blanco oxidado que Christian Boltanski realiza como reflexión a la desaparición de los casi 3.000 mineros adolescentes en las minas de carbón de Grand-Hornu. Boltanski da nombre a cada uno de estos mineros como forma de traer a la vida cada una de sus historias individuales. \\nObra fechada en 1997 y realizada en tres dimensiones de Christian Boltanski (1944, París). \\nChristian Boltanski es un artista francés cuyo trabajo se ha centrado siempre en su preocupación por la memoria, la muerte, el pasado, el inventario y el olvido. \\n\\n“Les registres de Grand-Hornu” es una reflexión sobre la desaparición de casi 3.000 mineros adolescentes en las minas de Grand-Hornu. \\n\\nBoltanski cree en la importancia del nombre. No le parecía justo que se hablara de 5000 mineros menores de edad. No eran anónimos. En esta pieza se recuerda que cada uno de estos adolescentes existieron y existen. \\n\\nLos nombres de casi 3.000 de el los se muestran en las etiquetas de las cajas de galletas oxidadas. Estas cajas a menudo se utilizan para almacenar documentos personales y fotos de la familia guardadas detrás de un armario o debajo de la cama. Estos objetos están arraigados a nuestras vidas, a nuestra memoria colectiva. El conjunto de la vida de un hombre puede estar en una de estas cajas. Con esta instalación el artista da a los mineros un nombre y un rostro. Explicar que 5.000 mineros vivieron y trabajaron en las minas de Grand-Hornu es un hecho histórico anónimo, pero al llamar a los mineros por su nombre, sus historias individuales vuelven a la vida. \\n\\nLas 650 fotografías fueron tomadas al azar de los archivos de la mina, así como los nombres pegados a las cajas, que no tienen un orden preestablecido. \\n\\nMuro formado por 2678 cajas de hierro blanco oxidado. Cada caja se etiqueta con un nombre o una reproducción fotográfica. \\nLa obra está iluminada por una hilera de lámparas de despacho dispuestas encima del muro en toda su longitud. \\n\\nMateriales: Hierro blanco oxidado. Fotografías en blanco y negro. Etiquetas. Lámparas de despacho \\n\\nDimensiones: 472 x 4015 x 19 cm \\nDimensiones de cada caja: 35.5 x 19x 19 cm \\n\\nPropiedad: Comprada en 1998 por el Museo de Arte Contemporáneo de Grand-Hornu, propiedad de la Federación Wallonie-Bruxelles (Bélgica). ', " +
	"'Lugar: Sala de exposiciones de el instante fundación. Calle Palos de la Frontera, 20. 28012 Madrid. \\nFechas: Del 23 de enero al 23 de marzo de 2017 \\nHorarios: De lunes a viernes de 10.00h a 14.00h y de 16.00h a 20.00h. Sábados de  0.00h a 14.00h. \\nComisario: Laurent Busine \\nOrganizado por: el instante fundación \\nCon la colaboración de: En negociación \\nCon el apoyo en difusión: En negociación \\nFotografías: Copyright Philippe Degobert, Courtesy Musée des arts contemporains au Grand-Hornu. Les photos on été prises lors de la présentation de l\\'oeuvre dans la grange aux foins du Grand-Hornu en 1997 et en 2010.', '')"


public func useMysql() {
	let dataMysql = MySQL()

    // need to make sure something is available.
    guard dataMysql.connect(host: testHost, user: testUser, password: testPassword ) else {
        print("Failure connecting to data server \(testHost)")
        return
    }

    defer {
        dataMysql.close()  // defer ensures we close our db connection at the end of this request
    }

	guard dataMysql.query(statement: "DROP DATABASE IF EXISTS test1") && dataMysql.query(statement: "CREATE DATABASE test1 CHARACTER SET utf8") else {
		print("Failure: \(dataMysql.errorCode()) \(dataMysql.errorMessage())")
		return
	}

    //set database to be used, this example assumes presence of a users table and run a raw query, return failure message on a error
    guard dataMysql.selectDatabase(named: "test1") else {
        print("Failure: \(dataMysql.errorCode()) \(dataMysql.errorMessage())")
        return
    }

	guard dataMysql.query(statement: QUERY_CREATE_TABLE) else {
		print("Failure: \(dataMysql.errorCode()) \(dataMysql.errorMessage())")
		return
	}

	guard dataMysql.query(statement: QUERY_INSERT) else {
		print("Failure: \(dataMysql.errorCode()) \(dataMysql.errorMessage())")
		return
	}

	let stmt:MySQLStmt = MySQLStmt(dataMysql)

	guard stmt.prepare(statement: "SELECT * FROM actividades WHERE id = ?") else {
		print("Cannot create statement \(stmt.errorCode()) \(stmt.errorMessage())")
		return
	}

	stmt.bindParam(1)

	guard stmt.execute() else {
		print("Cannot execute statement \(stmt.errorCode()) \(stmt.errorMessage())")
		return
	}


    //store complete result set
    let results = stmt.results()

    //setup an array to store results
    var resultArray = [[Any?]]()
	_ = results.forEachRow { row in
		resultArray.append(row)
	}

   //return array to http response
	print(resultArray.debugDescription)
	dataMysql.close()
}

useMysql()
