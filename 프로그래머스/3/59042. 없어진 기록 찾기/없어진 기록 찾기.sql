# 보호소에 들어온 정보 AI
# 입양 보낸 정보 AO
# 데이터 유실됨 => 입양 기록은 있는데 보호소에 기록이 없는 동물 찾기

SELECT AO.ANIMAL_ID , AO.NAME 
FROM ANIMAL_OUTS AO LEFT OUTER JOIN ANIMAL_INS AI
ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AI.ANIMAL_ID IS NULL
ORDER BY AO.ANIMAL_ID;