.class public final La/a/a/l;
.super Ljava/text/SimpleDateFormat;


# static fields
.field private static a:Z

.field private static b:Ljava/util/TimeZone;

.field private static c:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, La/a/a/l;->a:Z

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, La/a/a/l;->b:Ljava/util/TimeZone;

    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, La/a/a/l;->b:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    sput-object v0, La/a/a/l;->c:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EEE, d MMM yyyy HH:mm:ss \'XXXXX\' (z)"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method private static declared-synchronized a(IIIIIIIZ)Ljava/util/Date;
    .locals 4

    const-class v0, La/a/a/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, La/a/a/l;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    sget-object v1, La/a/a/l;->c:Ljava/util/Calendar;

    invoke-virtual {v1, p7}, Ljava/util/Calendar;->setLenient(Z)V

    sget-object v1, La/a/a/l;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Ljava/util/Calendar;->set(II)V

    sget-object v1, La/a/a/l;->c:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    sget-object v1, La/a/a/l;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    sget-object v1, La/a/a/l;->c:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    sget-object v1, La/a/a/l;->c:Ljava/util/Calendar;

    const/16 v2, 0xc

    add-int v3, p4, p6

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    sget-object v1, La/a/a/l;->c:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p5}, Ljava/util/Calendar;->set(II)V

    sget-object v1, La/a/a/l;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a([CLjava/text/ParsePosition;Z)Ljava/util/Date;
    .locals 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, La/a/a/g;

    invoke-direct {v7, p0}, La/a/a/g;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, v7, La/a/a/g;->b:[C

    iget v1, v7, La/a/a/g;->a:I

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget v0, v7, La/a/a/g;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, La/a/a/g;->a:I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    new-instance p2, Ljava/text/ParseException;

    const-string v0, "No Number Found"

    iget v1, v7, La/a/a/g;->a:I

    invoke-direct {p2, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p2

    sget-boolean v0, La/a/a/l;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad date: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 p0, 0x0

    :goto_1
    return-object p0

    :pswitch_0
    :try_start_3
    invoke-virtual {v7}, La/a/a/g;->b()I

    move-result v2

    const/16 v0, 0x2d

    invoke-virtual {v7, v0}, La/a/a/g;->a(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, La/a/a/g;->a()V

    :cond_1
    invoke-virtual {v7}, La/a/a/g;->c()I

    move-result v1

    const/16 v0, 0x2d

    invoke-virtual {v7, v0}, La/a/a/g;->a(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v7}, La/a/a/g;->a()V

    :cond_2
    invoke-virtual {v7}, La/a/a/g;->b()I

    move-result v0

    const/16 v3, 0x32

    if-ge v0, v3, :cond_6

    add-int/lit16 v0, v0, 0x7d0

    :cond_3
    :goto_2
    invoke-virtual {v7}, La/a/a/g;->a()V

    invoke-virtual {v7}, La/a/a/g;->b()I

    move-result v3

    iget v4, v7, La/a/a/g;->a:I

    iget-object v8, v7, La/a/a/g;->b:[C

    array-length v8, v8

    if-ge v4, v8, :cond_8

    iget-object v4, v7, La/a/a/g;->b:[C

    iget v8, v7, La/a/a/g;->a:I

    aget-char v4, v4, v8

    const/16 v8, 0x3a

    if-ne v4, v8, :cond_7

    iget v4, v7, La/a/a/g;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v7, La/a/a/g;->a:I

    invoke-virtual {v7}, La/a/a/g;->b()I

    move-result v4

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, La/a/a/g;->a(C)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, La/a/a/g;->b()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v5

    :cond_4
    :try_start_4
    invoke-virtual {v7}, La/a/a/g;->a()V

    iget v8, v7, La/a/a/g;->a:I

    iget-object v9, v7, La/a/a/g;->b:[C

    array-length v9, v9

    if-lt v8, v9, :cond_9

    new-instance v8, Ljava/text/ParseException;

    const-string v9, "No more characters"

    iget v10, v7, La/a/a/g;->a:I

    invoke-direct {v8, v9, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_2
    move-exception v8

    :try_start_5
    sget-boolean v8, La/a/a/l;->a:Z

    if-eqz v8, :cond_5

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "No timezone? : \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    :goto_3
    iget v7, v7, La/a/a/g;->a:I

    invoke-virtual {p1, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    move v7, p2

    invoke-static/range {v0 .. v7}, La/a/a/l;->a(IIIIIIIZ)Ljava/util/Date;

    move-result-object p0

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0x64

    if-ge v0, v3, :cond_3

    add-int/lit16 v0, v0, 0x76c

    goto :goto_2

    :cond_7
    new-instance p2, Ljava/text/ParseException;

    const-string v0, "Wrong char"

    iget v1, v7, La/a/a/g;->a:I

    invoke-direct {p2, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_8
    new-instance p2, Ljava/text/ParseException;

    const-string v0, "No more characters"

    iget v1, v7, La/a/a/g;->a:I

    invoke-direct {p2, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_9
    :try_start_6
    iget-object v8, v7, La/a/a/g;->b:[C

    iget v9, v7, La/a/a/g;->a:I

    aget-char v8, v8, v9

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_a

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_d

    :cond_a
    const/4 v8, 0x0

    iget-object v9, v7, La/a/a/g;->b:[C

    iget v10, v7, La/a/a/g;->a:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v7, La/a/a/g;->a:I

    aget-char v9, v9, v10

    const/16 v10, 0x2b

    if-ne v9, v10, :cond_c

    const/4 v8, 0x1

    :cond_b
    invoke-virtual {v7}, La/a/a/g;->b()I

    move-result v9

    div-int/lit8 v10, v9, 0x64

    mul-int/lit8 v10, v10, 0x3c

    rem-int/lit8 v6, v9, 0x64

    add-int/2addr v6, v10

    if-eqz v8, :cond_5

    neg-int v6, v6

    goto :goto_3

    :cond_c
    const/16 v10, 0x2d

    if-eq v9, v10, :cond_b

    new-instance v8, Ljava/text/ParseException;

    const-string v9, "Bad Numeric TimeZone"

    iget v10, v7, La/a/a/g;->a:I

    invoke-direct {v8, v9, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    :cond_d
    invoke-virtual {v7}, La/a/a/g;->d()I
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result v6

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    const/16 v5, 0xa

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x19

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x58

    if-ne v1, v2, :cond_0

    iget-object v1, p0, La/a/a/l;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v1, p0, La/a/a/l;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v1, p0, La/a/a/l;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, La/a/a/l;->calendar:Ljava/util/Calendar;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    if-gez v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x2d

    invoke-virtual {p2, v0, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    neg-int v0, v1

    move v1, v0

    move v0, v2

    :goto_1
    div-int/lit8 v1, v1, 0x3c

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v4, v2, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {p2, v0, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v0, v3, 0x1

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {p2, v3, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v3, v1, 0xa

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {p2, v0, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    rem-int/lit8 v0, v1, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p2, v2, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    return-object p2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x2b

    invoke-virtual {p2, v0, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v0, v2

    goto :goto_1
.end method

.method public final parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, La/a/a/l;->isLenient()Z

    move-result v1

    invoke-static {v0, p2, v1}, La/a/a/l;->a([CLjava/text/ParsePosition;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final setCalendar(Ljava/util/Calendar;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method setCalendar() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method setNumberFormat() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
