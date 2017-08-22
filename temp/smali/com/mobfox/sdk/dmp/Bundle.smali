.class public Lcom/mobfox/sdk/dmp/Bundle;
.super Ljava/lang/Object;
.source "Bundle.java"


# instance fields
.field bundleObj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mobfox/sdk/dmp/Bundle;->bundleObj:Lorg/json/JSONObject;

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/dmp/Bundle;->bundleObj:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static parse([I)Ljava/lang/String;
    .locals 5
    .param p0, "arr"    # [I

    .prologue
    .line 44
    const/4 v3, 0x4

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .line 45
    .local v1, "key":[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v2, "output":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 49
    aget v3, p0, v0

    int-to-char v3, v3

    array-length v4, v1

    rem-int v4, v0, v4

    aget-char v4, v1, v4

    xor-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 44
    :array_0
    .array-data 2
        0x49s
        0x4cs
        0x31s
        0x32s
    .end array-data
.end method

.method protected static prepare(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 33
    const/16 v3, 0xc

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .line 34
    .local v1, "key":[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v2, "output":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    array-length v4, v1

    rem-int v4, v0, v4

    aget-char v4, v1, v4

    xor-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 33
    nop

    :array_0
    .array-data 2
        0x49s
        0x76s
        0x6fs
        0x72s
        0x79s
        0x4cs
        0x61s
        0x74s
        0x74s
        0x61s
        0x31s
        0x32s
    .end array-data
.end method


# virtual methods
.method public addData(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "c"    # Landroid/content/Context;
    .param p3, "IPAddress"    # Ljava/lang/String;
    .param p4, "ua"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<[I>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v11, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    const/4 v15, 0x0

    invoke-direct {v11, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    .local v11, "mainIntent":Landroid/content/Intent;
    const-string v14, "android.intent.category.LAUNCHER"

    invoke-virtual {v11, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :try_start_0
    const-class v15, Landroid/content/Context;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    invoke-static {v14}, Lcom/mobfox/sdk/dmp/Bundle;->parse([I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 61
    .local v9, "m1":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 62
    .local v12, "ret1":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    invoke-static {v14}, Lcom/mobfox/sdk/dmp/Bundle;->parse([I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Landroid/content/Intent;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 63
    .local v10, "m2":Ljava/lang/reflect/Method;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 64
    .local v13, "ret2":Ljava/lang/Object;
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    move-object v8, v0

    .line 65
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 66
    .local v1, "arr":Lorg/json/JSONArray;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 67
    .local v7, "inf":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    const/4 v14, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    invoke-static {v14}, Lcom/mobfox/sdk/dmp/Bundle;->parse([I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 68
    .local v3, "f1":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 69
    .local v5, "fv":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    const/4 v14, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    invoke-static {v14}, Lcom/mobfox/sdk/dmp/Bundle;->parse([I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 70
    .local v4, "f2":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 71
    .local v6, "fv2":Ljava/lang/Object;
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 79
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v3    # "f1":Ljava/lang/reflect/Field;
    .end local v4    # "f2":Ljava/lang/reflect/Field;
    .end local v5    # "fv":Ljava/lang/Object;
    .end local v6    # "fv2":Ljava/lang/Object;
    .end local v7    # "inf":Ljava/lang/Object;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v9    # "m1":Ljava/lang/reflect/Method;
    .end local v10    # "m2":Ljava/lang/reflect/Method;
    .end local v12    # "ret1":Ljava/lang/Object;
    .end local v13    # "ret2":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 81
    const-string v14, "MobFoxDMP"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dmp.bundle "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 74
    .restart local v1    # "arr":Lorg/json/JSONArray;
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v9    # "m1":Ljava/lang/reflect/Method;
    .restart local v10    # "m2":Ljava/lang/reflect/Method;
    .restart local v12    # "ret1":Ljava/lang/Object;
    .restart local v13    # "ret2":Ljava/lang/Object;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobfox/sdk/dmp/Bundle;->bundleObj:Lorg/json/JSONObject;

    const-string v15, "arr"

    invoke-virtual {v14, v15, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobfox/sdk/dmp/Bundle;->bundleObj:Lorg/json/JSONObject;

    const-string v15, "IPAddress"

    move-object/from16 v0, p3

    invoke-virtual {v14, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobfox/sdk/dmp/Bundle;->bundleObj:Lorg/json/JSONObject;

    const-string v15, "ua"

    move-object/from16 v0, p4

    invoke-virtual {v14, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mobfox/sdk/dmp/Bundle;->bundleObj:Lorg/json/JSONObject;

    const-string v15, "core"

    const-string v16, "Core_3.2.7"

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 85
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v9    # "m1":Ljava/lang/reflect/Method;
    .end local v10    # "m2":Ljava/lang/reflect/Method;
    .end local v12    # "ret1":Ljava/lang/Object;
    .end local v13    # "ret2":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Throwable;
    const-string v14, "MobFoxDMP"

    const-string v15, "dmp.bundle throwable"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 84
    .local v2, "e":Ljava/lang/Exception;
    :cond_1
    const-string v14, "MobFoxDMP"

    const-string v15, "dmp.bundle exception"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getBundleObj()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mobfox/sdk/dmp/Bundle;->bundleObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    const-string v0, "MobFoxDMP"

    const-string v1, "toString"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/mobfox/sdk/dmp/Bundle;->bundleObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobfox/sdk/dmp/Bundle;->prepare(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
