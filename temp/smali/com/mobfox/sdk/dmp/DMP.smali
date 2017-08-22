.class public Lcom/mobfox/sdk/dmp/DMP;
.super Ljava/lang/Object;
.source "DMP.java"


# static fields
.field public static BUNDLE_FILE:Ljava/lang/String;

.field protected static DAY:J

.field public static NEXT_BUNDLE_FILE:Ljava/lang/String;

.field public static UPDATE_FILE:Ljava/lang/String;

.field protected static instance:Lcom/mobfox/sdk/dmp/DMP;


# instance fields
.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "mobfox-dmp-next-bundle"

    sput-object v0, Lcom/mobfox/sdk/dmp/DMP;->NEXT_BUNDLE_FILE:Ljava/lang/String;

    .line 25
    const-string v0, "mobfox-dmp-bundle"

    sput-object v0, Lcom/mobfox/sdk/dmp/DMP;->BUNDLE_FILE:Ljava/lang/String;

    .line 26
    const-string v0, "mobfox-update-file"

    sput-object v0, Lcom/mobfox/sdk/dmp/DMP;->UPDATE_FILE:Ljava/lang/String;

    .line 27
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/mobfox/sdk/dmp/DMP;->DAY:J

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/mobfox/sdk/dmp/DMP;->instance:Lcom/mobfox/sdk/dmp/DMP;

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mobfox/sdk/dmp/DMP;->data:Ljava/util/List;

    .line 37
    const/16 v4, 0x11

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 38
    .local v0, "arr1":[I
    iget-object v4, p0, Lcom/mobfox/sdk/dmp/DMP;->data:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const/16 v4, 0x15

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    .line 41
    .local v1, "arr2":[I
    iget-object v4, p0, Lcom/mobfox/sdk/dmp/DMP;->data:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    const/16 v4, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    .line 44
    .local v2, "arr3":[I
    iget-object v4, p0, Lcom/mobfox/sdk/dmp/DMP;->data:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    const/16 v4, 0xb

    new-array v3, v4, [I

    fill-array-data v3, :array_3

    .line 47
    .local v3, "arr4":[I
    iget-object v4, p0, Lcom/mobfox/sdk/dmp/DMP;->data:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x2e
        0x29
        0x45
        0x62
        0x28
        0x2f
        0x5a
        0x53
        0x2e
        0x29
        0x7c
        0x53
        0x27
        0x2d
        0x56
        0x57
        0x3b
    .end array-data

    .line 40
    :array_1
    .array-data 4
        0x38
        0x39
        0x54
        0x40
        0x30
        0x5
        0x5f
        0x46
        0x2c
        0x22
        0x45
        0x73
        0x2a
        0x38
        0x58
        0x44
        0x20
        0x38
        0x58
        0x57
        0x3a
    .end array-data

    .line 43
    :array_2
    .array-data 4
        0x28
        0x2f
        0x45
        0x5b
        0x3f
        0x25
        0x45
        0x4b
        0x0
        0x22
        0x57
        0x5d
    .end array-data

    .line 46
    :array_3
    .array-data 4
        0x39
        0x2d
        0x52
        0x59
        0x28
        0x2b
        0x54
        0x7c
        0x28
        0x21
        0x54
    .end array-data
.end method

.method public static getInstance()Lcom/mobfox/sdk/dmp/DMP;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/mobfox/sdk/dmp/DMP;->instance:Lcom/mobfox/sdk/dmp/DMP;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/mobfox/sdk/dmp/DMP;

    invoke-direct {v0}, Lcom/mobfox/sdk/dmp/DMP;-><init>()V

    sput-object v0, Lcom/mobfox/sdk/dmp/DMP;->instance:Lcom/mobfox/sdk/dmp/DMP;

    .line 55
    :cond_0
    sget-object v0, Lcom/mobfox/sdk/dmp/DMP;->instance:Lcom/mobfox/sdk/dmp/DMP;

    return-object v0
.end method


# virtual methods
.method public deferUpdate(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x6

    const/4 v4, 0x1

    .line 114
    sget-object v5, Lcom/mobfox/sdk/dmp/DMP;->NEXT_BUNDLE_FILE:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/mobfox/sdk/utils/Utils;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "next":Ljava/lang/String;
    const/4 v0, 0x0

    .line 117
    .local v0, "bundleDate":Ljava/util/Calendar;
    if-nez v3, :cond_1

    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 121
    .local v1, "generator":Ljava/util/Random;
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 122
    .local v2, "i":I
    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->add(II)V

    .line 123
    sget-object v5, Lcom/mobfox/sdk/dmp/DMP;->NEXT_BUNDLE_FILE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/mobfox/sdk/utils/Utils;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v1    # "generator":Ljava/util/Random;
    .end local v2    # "i":I
    :cond_0
    :goto_0
    return v4

    .line 128
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/mobfox/sdk/dmp/DMP;->isRipe(Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 135
    .restart local v1    # "generator":Ljava/util/Random;
    const/16 v4, 0x1e

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 136
    .restart local v2    # "i":I
    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->add(II)V

    .line 137
    sget-object v4, Lcom/mobfox/sdk/dmp/DMP;->NEXT_BUNDLE_FILE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/mobfox/sdk/utils/Utils;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getPost(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 60
    sget-object v8, Lcom/mobfox/sdk/dmp/DMP;->BUNDLE_FILE:Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/mobfox/sdk/utils/Utils;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "update":Ljava/lang/String;
    if-nez v4, :cond_0

    move-object v5, v7

    .line 104
    :goto_0
    return-object v5

    .line 66
    :cond_0
    sget-object v8, Lcom/mobfox/sdk/dmp/DMP;->UPDATE_FILE:Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/mobfox/sdk/utils/Utils;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "next":Ljava/lang/String;
    const/4 v6, 0x0

    .line 70
    .local v6, "updateTime":Ljava/util/Calendar;
    if-nez v3, :cond_1

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 74
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 75
    .local v1, "generator":Ljava/util/Random;
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v2, v8, 0x1

    .line 77
    .local v2, "i":I
    const/4 v8, 0x6

    invoke-virtual {v6, v8, v2}, Ljava/util/Calendar;->add(II)V

    .line 78
    sget-object v8, Lcom/mobfox/sdk/dmp/DMP;->UPDATE_FILE:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v8, v9}, Lcom/mobfox/sdk/utils/Utils;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 80
    goto :goto_0

    .line 83
    .end local v1    # "generator":Ljava/util/Random;
    .end local v2    # "i":I
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 86
    invoke-virtual {p0, v6}, Lcom/mobfox/sdk/dmp/DMP;->isRipe(Ljava/util/Calendar;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v5, v7

    .line 87
    goto :goto_0

    .line 90
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v5, "updateObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "u"

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    sget-object v7, Lcom/mobfox/sdk/dmp/DMP;->BUNDLE_FILE:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 102
    sget-object v7, Lcom/mobfox/sdk/dmp/DMP;->UPDATE_FILE:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move-object v5, v7

    .line 97
    goto :goto_0
.end method

.method public isRipe(Ljava/util/Calendar;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IPAddress"    # Ljava/lang/String;
    .param p3, "ua"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/dmp/DMP;->deferUpdate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Lcom/mobfox/sdk/services/MobFoxAdIdService;

    new-instance v1, Lcom/mobfox/sdk/dmp/DMP$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mobfox/sdk/dmp/DMP$1;-><init>(Lcom/mobfox/sdk/dmp/DMP;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/mobfox/sdk/services/MobFoxAdIdService;-><init>(Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;Landroid/content/Context;)V

    .line 169
    .local v0, "advIdService":Lcom/mobfox/sdk/services/MobFoxAdIdService;
    invoke-virtual {v0}, Lcom/mobfox/sdk/services/MobFoxAdIdService;->execute()V

    goto :goto_0
.end method
