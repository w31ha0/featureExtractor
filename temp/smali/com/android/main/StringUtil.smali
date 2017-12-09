.class public Lcom/android/main/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentDate(I)Ljava/lang/String;
    .locals 7
    .param p0, "type"    # I

    .prologue
    .line 32
    const-string v3, ""

    .line 34
    .local v3, "str":Ljava/lang/String;
    :try_start_0
    const-string v4, "yyyy-MM-dd HH:mm"

    .line 35
    .local v4, "tmp":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne p0, v5, :cond_1

    .line 36
    const-string v4, "yyyyMMddHHmm"

    .line 40
    :cond_0
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "bartDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 42
    .local v1, "curDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .end local v0    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v4    # "tmp":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 37
    .restart local v4    # "tmp":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x2

    if-ne p0, v5, :cond_0

    .line 38
    const-string v4, "yyyyMMdd"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v4    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "info"

    const-string v6, "getTimeLength is error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDate(I)Ljava/lang/String;
    .locals 5
    .param p0, "hour"    # I

    .prologue
    const/16 v4, 0xa

    .line 50
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 51
    .local v0, "d":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 52
    .local v1, "now":Ljava/util/Calendar;
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 53
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, p0

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 54
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getDate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "hour"    # I

    .prologue
    const/16 v5, 0xa

    const-string v6, "yyyyMMddHHmm"

    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "date":Ljava/util/Date;
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 62
    const-string v4, "yyyyMMddHHmm"

    .line 61
    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "bartDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    .end local v0    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 67
    .local v2, "now":Ljava/util/Calendar;
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 68
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 69
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmm"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 64
    .end local v2    # "now":Ljava/util/Calendar;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getRandomNumber(I)I
    .locals 2
    .param p0, "len"    # I

    .prologue
    .line 26
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 27
    .local v1, "random":Ljava/util/Random;
    invoke-virtual {v1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 28
    .local v0, "number":I
    return v0
.end method

.method public static getRecordInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "allStr"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 151
    .local v0, "result":[Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "splits":[Ljava/lang/String;
    move-object v2, v1

    .line 155
    .end local v1    # "splits":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public static getSubString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "allStr"    # Ljava/lang/String;
    .param p1, "begStr"    # Ljava/lang/String;
    .param p2, "endStr"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 16
    .local v1, "sendnumbeg":I
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 17
    .local v2, "sendnumend":I
    const-string v0, ""

    .line 18
    .local v0, "resultStr":Ljava/lang/String;
    if-ge v1, v2, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 22
    :cond_0
    return-object v0
.end method

.method public static getTimeLength(Ljava/lang/String;I)I
    .locals 12
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "datenum"    # I

    .prologue
    .line 98
    const/4 v4, 0x0

    .line 99
    .local v4, "result":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v5, v4

    .line 115
    .end local v4    # "result":I
    .local v5, "result":I
    :goto_0
    return v5

    .line 102
    .end local v5    # "result":I
    .restart local v4    # "result":I
    :cond_1
    const/16 v8, 0x8

    invoke-static {p0, v8}, Lcom/android/main/StringUtil;->simpleCutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "d":Ljava/lang/String;
    const/4 v2, 0x0

    .line 105
    .local v2, "date2":Ljava/util/Date;
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 106
    const-string v8, "yyyyMMddHHmm"

    .line 105
    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "bartDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 110
    .end local v0    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 111
    .local v3, "nowtime":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 112
    .local v7, "tmptime":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 113
    .local v6, "timelen":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    div-long/2addr v8, v10

    int-to-long v10, p1

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    .line 114
    const/4 v4, 0x1

    :cond_2
    move v5, v4

    .line 115
    .end local v4    # "result":I
    .restart local v5    # "result":I
    goto :goto_0

    .line 108
    .end local v3    # "nowtime":Ljava/lang/Long;
    .end local v5    # "result":I
    .end local v6    # "timelen":Ljava/lang/Long;
    .end local v7    # "tmptime":Ljava/lang/Long;
    .restart local v4    # "result":I
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public static getTimeLength(Ljava/lang/String;)Ljava/lang/Long;
    .locals 13
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const-string v12, "info"

    .line 75
    new-instance v5, Ljava/lang/Long;

    const-wide/16 v8, 0x0

    invoke-direct {v5, v8, v9}, Ljava/lang/Long;-><init>(J)V

    .line 76
    .local v5, "result":Ljava/lang/Long;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move-object v8, v5

    .line 94
    :goto_0
    return-object v8

    .line 79
    :cond_1
    const/16 v8, 0x8

    invoke-static {p0, v8}, Lcom/android/main/StringUtil;->simpleCutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "d":Ljava/lang/String;
    const/4 v2, 0x0

    .line 82
    .local v2, "date2":Ljava/util/Date;
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 83
    const-string v8, "yyyyMMddHHmm"

    .line 82
    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "bartDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 88
    .end local v0    # "bartDateFormat":Ljava/text/SimpleDateFormat;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 89
    .local v4, "nowtime":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 90
    .local v7, "tmptime":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 91
    .local v6, "timelen":Ljava/lang/Long;
    const-string v8, "info"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "timelen:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v6

    .line 94
    goto :goto_0

    .line 85
    .end local v4    # "nowtime":Ljava/lang/Long;
    .end local v6    # "timelen":Ljava/lang/Long;
    .end local v7    # "tmptime":Ljava/lang/Long;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 86
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "info"

    const-string v8, "getTimeLength is error"

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isNullOrBlank(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static simpleCutString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 119
    invoke-static {p0}, Lcom/android/main/StringUtil;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 120
    mul-int/lit8 p1, p1, 0x2

    .line 121
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 123
    .local v1, "counter":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 135
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p0

    .line 140
    .end local v1    # "counter":I
    .end local v2    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v4

    .line 124
    .restart local v1    # "counter":I
    .restart local v2    # "i":I
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 125
    .local v0, "c":C
    const/16 v4, 0xff

    if-ge v0, v4, :cond_2

    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 130
    :goto_2
    if-gt v1, p1, :cond_0

    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 138
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 140
    .end local v1    # "counter":I
    .end local v2    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    const-string v4, ""

    goto :goto_1
.end method
