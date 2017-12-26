.class public Lcom/google/android/gms/internal/zzx;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzx;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzb$zza;
    .locals 29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzi;->zzA:Ljava/util/Map;

    move-object/from16 v20, v0

    const-wide/16 v2, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string v1, "Date"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzx;->zzg(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v2, v1

    :cond_0
    const-string v1, "Cache-Control"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    const/4 v9, 0x1

    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v1, v0, :cond_7

    aget-object v22, v21, v1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, "no-cache"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    const-string v23, "no-store"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_2
    const-string v23, "max-age="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    const/16 v23, 0x8

    :try_start_0
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v7

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v23, "stale-while-revalidate="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v23, 0x17

    :try_start_1
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v5

    goto :goto_2

    :cond_5
    const-string v23, "must-revalidate"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    const-string v23, "proxy-revalidate"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    move/from16 v24, v9

    move-wide/from16 v25, v5

    move/from16 v5, v24

    move-wide/from16 v27, v7

    move-wide/from16 v8, v27

    move-wide/from16 v6, v25

    const-string v1, "Expires"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lcom/google/android/gms/internal/zzx;->zzg(Ljava/lang/String;)J

    move-result-wide v10

    :cond_8
    const-string v1, "Last-Modified"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lcom/google/android/gms/internal/zzx;->zzg(Ljava/lang/String;)J

    move-result-wide v12

    :cond_9
    const-string v1, "ETag"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v5, :cond_b

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long v8, v8, v18

    if-eqz v4, :cond_a

    move-wide v4, v8

    :goto_3
    new-instance v6, Lcom/google/android/gms/internal/zzb$zza;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzb$zza;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzi;->data:[B

    iput-object v7, v6, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    iput-object v1, v6, Lcom/google/android/gms/internal/zzb$zza;->zzb:Ljava/lang/String;

    iput-wide v8, v6, Lcom/google/android/gms/internal/zzb$zza;->zzf:J

    iput-wide v4, v6, Lcom/google/android/gms/internal/zzb$zza;->zze:J

    iput-wide v2, v6, Lcom/google/android/gms/internal/zzb$zza;->zzc:J

    iput-wide v12, v6, Lcom/google/android/gms/internal/zzb$zza;->zzd:J

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/google/android/gms/internal/zzb$zza;->zzg:Ljava/util/Map;

    move-object v1, v6

    goto/16 :goto_1

    :cond_a
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, v8

    goto :goto_3

    :cond_b
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_c

    cmp-long v4, v10, v2

    if-ltz v4, :cond_c

    sub-long v4, v10, v2

    add-long v4, v4, v18

    move-wide v8, v4

    goto :goto_3

    :catch_0
    move-exception v22

    goto/16 :goto_2

    :catch_1
    move-exception v22

    goto/16 :goto_2

    :cond_c
    move-wide v4, v14

    move-wide/from16 v8, v16

    goto :goto_3
.end method

.method public static zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x1

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object p1, v3, v1

    :cond_0
    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static zzg(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method
