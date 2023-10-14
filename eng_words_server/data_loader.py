import openpyxl

def read_excel(data_path):

    # Excel 파일 열기
    workbook = openpyxl.load_workbook(data_path)

    sheet = workbook.active

    # 전체 시트의 데이터 읽기
    for row in sheet.iter_rows(values_only=True):
        for cell_value in row:
            print(f'{cell_value}', end='\t')
        print()  # 줄 바꿈

    # 워크북 닫기
    workbook.close()

print(read_excel('./sentence.xlsx'))
