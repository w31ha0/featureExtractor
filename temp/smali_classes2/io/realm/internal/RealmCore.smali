.class public Lio/realm/internal/RealmCore;
.super Ljava/lang/Object;
.source "RealmCore.java"


# static fields
.field private static final BINARIES_PATH:Ljava/lang/String;

.field private static final FILE_SEP:Ljava/lang/String;

.field private static final PATH_SEP:Ljava/lang/String;

.field private static volatile libraryIsLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lio/realm/internal/RealmCore;->FILE_SEP:Ljava/lang/String;

    .line 35
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    sput-object v0, Lio/realm/internal/RealmCore;->PATH_SEP:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/realm/internal/RealmCore;->PATH_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/realm/internal/RealmCore;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/realm/internal/RealmCore;->BINARIES_PATH:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lio/realm/internal/RealmCore;->libraryIsLoaded:Z

    return-void
.end method

.method public static declared-synchronized loadLibrary(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 56
    const-class v1, Lio/realm/internal/RealmCore;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lio/realm/internal/RealmCore;->libraryIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    monitor-exit v1

    return-void

    .line 59
    :cond_0
    :try_start_1
    const-string/jumbo v0, "realm-jni"

    const-string/jumbo v2, "3.0.0"

    invoke-static {p0, v0, v2}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lio/realm/internal/RealmCore;->libraryIsLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
