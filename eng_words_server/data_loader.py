import openpyxl

def read_excel(data_path):

    # Excel 파일 열기
    workbook = openpyxl.load_workbook(data_path)

    sheet = workbook.active

    word_list = []

    # 전체 시트의 데이터 읽기
    for row in sheet.iter_rows(values_only=True):
        temp_list = []
        for cell_value in row[:2]:
            temp_list.append(cell_value)
        word_list.append(temp_list)

    # 워크북 닫기
    workbook.close()
    return word_list


if __name__ == '__main__':
    print(read_excel('./sentence.xlsx'))
