.class public Lcom/google/android/gms/internal/zzdr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# static fields
.field private static final zzwF:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzwG:Ljava/text/DecimalFormat;


# instance fields
.field private zzoA:Lcom/google/android/gms/internal/zzid;

.field private zzwH:Ljava/io/File;

.field private zzwI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdr;->zzwG:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzid;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdr;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzid;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Context.getCacheDir() returned null"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "admobVideoStreams"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create preload cache directory at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not set cache file permissions at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    goto :goto_0
.end method

.method private zzX(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdr;)Lcom/google/android/gms/internal/zzid;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzoA:Lcom/google/android/gms/internal/zzid;

    return-object v0
.end method

.method private zza(Ljava/io/File;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".done"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private zza(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzGF:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdr$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzdr$3;-><init>(Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Ljava/lang/String;Ljava/io/File;I)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzGF:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdr$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzdr$2;-><init>(Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;Ljava/io/File;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Ljava/lang/String;Ljava/io/File;II)V
    .locals 7

    sget-object v6, Lcom/google/android/gms/ads/internal/util/client/zza;->zzGF:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzdr$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdr$1;-><init>(Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;Ljava/io/File;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static zzb(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwI:Z

    return-void
.end method

.method public zzW(Ljava/lang/String;)Z
    .locals 24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;)V

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzdr;->zzdQ()I

    move-result v4

    sget-object v3, Lcom/google/android/gms/internal/zzbz;->zztO:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v4, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzdr;->zzdR()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Unable to expire stream cache"

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/zzdr;->zzX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-direct {v6, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stream cache hit at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v3}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;I)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v4, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stream cache already in progress at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;)V

    const/4 v3, 0x0

    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    :try_start_2
    new-instance v3, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    sget-object v3, Lcom/google/android/gms/internal/zzbz;->zztS:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v3, v4, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_5

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v9, 0x190

    if-lt v3, v9, :cond_5

    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP status code "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " at "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    move-object v4, v5

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/zzdr;->zzwI:Z

    if-eqz v4, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preload aborted for URL \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaA(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete partial cache file at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;)V

    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    :try_start_4
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v9

    if-gez v9, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stream cache aborted, missing content-length header at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;)V

    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzwG:Ljava/text/DecimalFormat;

    int-to-long v10, v9

    invoke-virtual {v3, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    sget-object v3, Lcom/google/android/gms/internal/zzbz;->zztP:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v9, v11, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exceeds limit at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;)V

    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Caching "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " bytes from "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v10

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    const/high16 v3, 0x100000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v14

    const/4 v5, 0x0

    invoke-interface {v14}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v15

    sget-object v3, Lcom/google/android/gms/internal/zzbz;->zztR:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    new-instance v19, Lcom/google/android/gms/internal/zzhq;

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzhq;-><init>(J)V

    sget-object v3, Lcom/google/android/gms/internal/zzbz;->zztQ:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move v3, v5

    :cond_8
    :goto_4
    invoke-interface {v10, v13}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-ltz v5, :cond_d

    add-int/2addr v3, v5

    if-le v3, v11, :cond_9

    new-instance v3, Ljava/io/IOException;

    const-string v5, "stream cache file size limit exceeded"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v3

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_a
    invoke-virtual {v12, v13}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-gtz v5, :cond_a

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface {v14}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v15

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v17

    cmp-long v5, v20, v22

    if-lez v5, :cond_b

    new-instance v3, Ljava/io/IOException;

    const-string v5, "stream cache time limit exceeded"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gms/internal/zzdr;->zzwI:Z

    if-eqz v5, :cond_c

    new-instance v3, Ljava/io/IOException;

    const-string v5, "abort requested"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/zzhq;->tryAcquire()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v3, v9}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;II)V

    goto :goto_4

    :cond_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzL(I)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Lcom/google/android/gms/internal/zzdr;->zzwG:Ljava/text/DecimalFormat;

    int-to-long v9, v3

    invoke-virtual {v5, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Preloaded "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " bytes from "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    :cond_e
    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-static {v7}, Lcom/google/android/gms/internal/zzdr;->zzb(Ljava/io/File;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v3}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;I)V

    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preload failed for URL \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_2
    move-exception v4

    goto/16 :goto_2

    :catch_3
    move-exception v4

    goto/16 :goto_2
.end method

.method public zzdQ()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    if-nez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public zzdR()Z
    .locals 11

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v5, 0x0

    const-wide v2, 0x7fffffffffffffffL

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v4, v8, v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".done"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v10, v0, v2

    if-gez v10, :cond_4

    move-object v2, v4

    :goto_2
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move-object v5, v2

    move-wide v2, v0

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_2
    :goto_3
    move v6, v0

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_3

    :cond_4
    move-wide v0, v2

    move-object v2, v5

    goto :goto_2
.end method
