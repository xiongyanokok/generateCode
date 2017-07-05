package com.test.excel;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellValue;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.util.CellReference;

public class TestReadExcel {

	public static void main(String[] args) throws IOException {
		InputStream is = new FileInputStream(
				"C:/Users/Administrator/Desktop/aa.xls");
		HSSFWorkbook wb = new HSSFWorkbook(is);
		for (int numSheet = 0; numSheet < wb.getNumberOfSheets(); numSheet++) {
			HSSFSheet sheet = wb.getSheetAt(numSheet);
			if (sheet == null) {
				continue;
			}
            //计算公式
			FormulaEvaluator evaluator = wb.getCreationHelper()
					.createFormulaEvaluator();

			int i = 0;
			for (Row row : sheet) {
				if (i > 1)
					break;
				i++;
				if (i != 2)
					continue;

				for (Cell cell : row) {
                    //计算一下单元格公式
					CellValue cellValue = evaluator.evaluate(cell);

					CellReference cellRef = new CellReference(row.getRowNum(),
							cell.getColumnIndex());
					System.out.print(cellRef.formatAsString());
					System.out.print(" - ");

					switch (cell.getCellType()) {
					case Cell.CELL_TYPE_STRING:
						System.out.println(cell.getRichStringCellValue()
								.getString());
						break;
					case Cell.CELL_TYPE_NUMERIC:
						if (DateUtil.isCellDateFormatted(cell)) {
							System.out.println(cell.getDateCellValue());
						} else {
							System.out.println(cell.getNumericCellValue());
						}
						break;
					case Cell.CELL_TYPE_BOOLEAN:
						System.out.println(cell.getBooleanCellValue());
						break;
					case Cell.CELL_TYPE_FORMULA:
						//System.out.println("f:" + cell.getCellFormula());
						System.out.println("f:" + cellValue.getNumberValue());
						break;
					default:
						System.out.println();
					}
				}

			}
		}
	}

}
