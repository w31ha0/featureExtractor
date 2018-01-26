.class Lorg/acra/DropBoxCollector;
.super Ljava/lang/Object;
.source "DropBoxCollector.java"


# static fields
.field private static final SYSTEM_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "system_app_anr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "system_app_wtf"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "system_app_crash"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "system_server_anr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "system_server_wtf"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "system_server_crash"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BATTERY_DISCHARGE_INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SYSTEM_RECOVERY_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SYSTEM_BOOT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SYSTEM_LAST_KMSG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "APANIC_CONSOLE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "APANIC_THREADS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SYSTEM_RESTART"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SYSTEM_TOMBSTONE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data_app_strictmode"

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "additionalTags"    # [Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lorg/acra/Compatibility;->getDropBoxServiceName()Ljava/lang/String;

    move-result-object v14

    .line 57
    .local v14, "serviceName":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v5, "dropboxContent":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 60
    .local v4, "dropbox":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    const-string v22, "getNextEntry"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Ljava/lang/String;

    aput-object v25, v23, v24

    const/16 v24, 0x1

    sget-object v25, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 61
    .local v8, "getNextEntry":Ljava/lang/reflect/Method;
    if-eqz v8, :cond_7

    .line 62
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 63
    .local v20, "timer":Landroid/text/format/Time;
    invoke-virtual/range {v20 .. v20}, Landroid/text/format/Time;->setToNow()V

    .line 64
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v21, v0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/acra/annotation/ReportsCrashes;->dropboxCollectionMinutes()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 65
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->normalize(Z)J

    .line 66
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 68
    .local v18, "time":J
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/acra/annotation/ReportsCrashes;->includeDropBoxSystemTags()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 69
    new-instance v16, Ljava/util/ArrayList;

    sget-object v21, Lorg/acra/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    .local v16, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_0

    .line 74
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    :cond_0
    const/16 v17, 0x0

    .line 77
    .local v17, "text":Ljava/lang/String;
    const/4 v7, 0x0

    .line 78
    .local v7, "entry":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_6

    .line 79
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v7    # "entry":Ljava/lang/Object;
    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 80
    .local v15, "tag":Ljava/lang/String;
    move-wide/from16 v12, v18

    .line 81
    .local v12, "msec":J
    const-string v21, "Tag: "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v15, v21, v22

    const/16 v22, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v8, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 83
    .restart local v7    # "entry":Ljava/lang/Object;
    if-eqz v7, :cond_5

    .line 84
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    const-string v22, "getText"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 85
    .local v9, "getText":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    const-string v23, "getTimeMillis"

    const/16 v21, 0x0

    check-cast v21, [Ljava/lang/Class;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 86
    .local v10, "getTimeMillis":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    const-string v23, "close"

    const/16 v21, 0x0

    check-cast v21, [Ljava/lang/Class;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 87
    .local v3, "close":Ljava/lang/reflect/Method;
    :goto_2
    if-eqz v7, :cond_1

    .line 88
    const/16 v21, 0x0

    check-cast v21, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v10, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 89
    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 90
    const-string v21, "@"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1f4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v9, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "text":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 92
    .restart local v17    # "text":Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 93
    const-string v21, "Text: "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :goto_3
    const/16 v21, 0x0

    check-cast v21, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v3, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v15, v21, v22

    const/16 v22, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v8, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 71
    .end local v3    # "close":Ljava/lang/reflect/Method;
    .end local v7    # "entry":Ljava/lang/Object;
    .end local v9    # "getText":Ljava/lang/reflect/Method;
    .end local v10    # "getTimeMillis":Ljava/lang/reflect/Method;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "msec":J
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "text":Ljava/lang/String;
    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .restart local v16    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 95
    .restart local v3    # "close":Ljava/lang/reflect/Method;
    .restart local v7    # "entry":Ljava/lang/Object;
    .restart local v9    # "getText":Ljava/lang/reflect/Method;
    .restart local v10    # "getTimeMillis":Ljava/lang/reflect/Method;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "msec":J
    .restart local v15    # "tag":Ljava/lang/String;
    .restart local v17    # "text":Ljava/lang/String;
    :cond_3
    const-string v21, "Not Text!"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_3

    .line 111
    .end local v3    # "close":Ljava/lang/reflect/Method;
    .end local v4    # "dropbox":Ljava/lang/Object;
    .end local v5    # "dropboxContent":Ljava/lang/StringBuilder;
    .end local v7    # "entry":Ljava/lang/Object;
    .end local v8    # "getNextEntry":Ljava/lang/reflect/Method;
    .end local v9    # "getText":Ljava/lang/reflect/Method;
    .end local v10    # "getTimeMillis":Ljava/lang/reflect/Method;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "msec":J
    .end local v14    # "serviceName":Ljava/lang/String;
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "text":Ljava/lang/String;
    .end local v18    # "time":J
    .end local v20    # "timer":Landroid/text/format/Time;
    :catch_0
    move-exception v6

    .line 112
    .local v6, "e":Ljava/lang/SecurityException;
    sget-object v21, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v22, "DropBoxManager not available."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v6    # "e":Ljava/lang/SecurityException;
    :cond_4
    :goto_4
    const-string v21, "N/A"

    :goto_5
    return-object v21

    .line 101
    .restart local v4    # "dropbox":Ljava/lang/Object;
    .restart local v5    # "dropboxContent":Ljava/lang/StringBuilder;
    .restart local v7    # "entry":Ljava/lang/Object;
    .restart local v8    # "getNextEntry":Ljava/lang/reflect/Method;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "msec":J
    .restart local v14    # "serviceName":Ljava/lang/String;
    .restart local v15    # "tag":Ljava/lang/String;
    .restart local v16    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "text":Ljava/lang/String;
    .restart local v18    # "time":J
    .restart local v20    # "timer":Landroid/text/format/Time;
    :cond_5
    :try_start_1
    const-string v21, "Nothing."

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_1

    .line 113
    .end local v4    # "dropbox":Ljava/lang/Object;
    .end local v5    # "dropboxContent":Ljava/lang/StringBuilder;
    .end local v7    # "entry":Ljava/lang/Object;
    .end local v8    # "getNextEntry":Ljava/lang/reflect/Method;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "msec":J
    .end local v14    # "serviceName":Ljava/lang/String;
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "text":Ljava/lang/String;
    .end local v18    # "time":J
    .end local v20    # "timer":Landroid/text/format/Time;
    :catch_1
    move-exception v6

    .line 114
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    sget-object v21, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v22, "DropBoxManager not available."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 106
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v4    # "dropbox":Ljava/lang/Object;
    .restart local v5    # "dropboxContent":Ljava/lang/StringBuilder;
    .restart local v7    # "entry":Ljava/lang/Object;
    .restart local v8    # "getNextEntry":Ljava/lang/reflect/Method;
    .restart local v14    # "serviceName":Ljava/lang/String;
    .restart local v16    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "text":Ljava/lang/String;
    .restart local v18    # "time":J
    .restart local v20    # "timer":Landroid/text/format/Time;
    :cond_6
    :try_start_2
    const-string v21, "No tag configured for collection."

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .end local v7    # "entry":Ljava/lang/Object;
    .end local v16    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "text":Ljava/lang/String;
    .end local v18    # "time":J
    .end local v20    # "timer":Landroid/text/format/Time;
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v21

    goto :goto_5

    .line 115
    .end local v4    # "dropbox":Ljava/lang/Object;
    .end local v5    # "dropboxContent":Ljava/lang/StringBuilder;
    .end local v8    # "getNextEntry":Ljava/lang/reflect/Method;
    .end local v14    # "serviceName":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 116
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    sget-object v21, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v22, "DropBoxManager not available."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 117
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v6

    .line 118
    .local v6, "e":Ljava/lang/IllegalAccessException;
    sget-object v21, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v22, "DropBoxManager not available."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 119
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v6

    .line 120
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v21, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v22, "DropBoxManager not available."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 121
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v6

    .line 122
    .local v6, "e":Ljava/lang/NoSuchFieldException;
    sget-object v21, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v22, "DropBoxManager not available."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
