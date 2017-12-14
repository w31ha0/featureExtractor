.class public Lcom/tutusw/phonespeedup/IntroActivity;
.super Landroid/app/Activity;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutusw/phonespeedup/IntroActivity$clicker;
    }
.end annotation


# static fields
.field public static final version:I = 0x40

.field public static final xda:Z = true


# instance fields
.field auto:Landroid/widget/Button;

.field cupcake:Landroid/widget/Button;

.field custom:Landroid/widget/Button;

.field dext:Landroid/widget/Button;

.field donate:Landroid/widget/Button;

.field editor:Landroid/content/SharedPreferences$Editor;

.field galaxy:Landroid/widget/Button;

.field liquid:Landroid/widget/Button;

.field moment:Landroid/widget/Button;

.field msm7x27:Landroid/widget/Button;

.field msm7x30:Landroid/widget/Button;

.field os:Ljava/io/DataOutputStream;

.field process:Ljava/lang/Process;

.field pulse:Landroid/widget/Button;

.field qsd:Landroid/widget/Button;

.field qsd8x55:Landroid/widget/Button;

.field settings:Landroid/content/SharedPreferences;

.field sholes:Landroid/widget/Button;

.field show:Landroid/widget/Button;

.field tattoo:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/IntroActivity;->storeVersion(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/IntroActivity;->storeConstants(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/IntroActivity;->showWarning()V

    return-void
.end method

.method static synthetic access$3(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Lcom/tutusw/phonespeedup/IntroActivity;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4(Lcom/tutusw/phonespeedup/IntroActivity;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/IntroActivity;->launchMarket()V

    return-void
.end method

.method static synthetic access$5(Lcom/tutusw/phonespeedup/IntroActivity;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/IntroActivity;->launchCupcake()V

    return-void
.end method

.method private buildUi()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const-string v8, "\u9891\u7387\u901f\u5ea6\u4e0d\u80fd\u88ab\u81ea\u52a8\u68c0\u6d4b\u3002\u6b63\u5728\u9690\u85cf\u81ea\u52a8\u68c0\u6d4b\u3002"

    const-string v7, "Speedup"

    .line 58
    new-instance v0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity$clicker;-><init>(Lcom/tutusw/phonespeedup/IntroActivity;Lcom/tutusw/phonespeedup/IntroActivity$clicker;)V

    .line 59
    .local v0, "clicker":Lcom/tutusw/phonespeedup/IntroActivity$clicker;
    const v3, 0x7f08005e

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->cupcake:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->cupcake:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->galaxy:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->galaxy:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->dext:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->dext:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v3, 0x7f080060

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->qsd:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->qsd:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v3, 0x7f080066

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->tattoo:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->tattoo:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v3, 0x7f08006a

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->custom:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->custom:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v3, 0x7f08005f

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->sholes:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->sholes:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v3, 0x7f080065

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->moment:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->moment:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v3, 0x7f080063

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->pulse:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->pulse:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v3, 0x7f080064

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->liquid:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->liquid:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v3, 0x7f080067

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->msm7x27:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->msm7x27:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v3, 0x7f080068

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->msm7x30:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->msm7x30:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v3, 0x7f080069

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->qsd8x55:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->qsd8x55:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->donate:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->donate:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v3, 0x7f08005c

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->auto:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->auto:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v3, 0x7f08005d

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->show:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->show:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :try_start_0
    const-string v3, "Speedup"

    const-string v4, "\u6b63\u5728\u81ea\u52a8\u68c0\u6d4b\u9891\u7387\u901f\u5ea6"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, "read":Ljava/lang/String;
    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-direct {p0, v3}, Lcom/tutusw/phonespeedup/IntroActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v3, ""

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    .line 98
    const-string v3, "Speedup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u9891\u7387\u901f\u5ea6\u88ab\u81ea\u52a8\u68c0\u6d4b\u5230: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/IntroActivity;->hideSelections()V

    .line 116
    .end local v2    # "read":Ljava/lang/String;
    :goto_0
    return-void

    .line 103
    .restart local v2    # "read":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/stats"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/IntroActivity;->hideSelections()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v2    # "read":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Speedup"

    const-string v3, "\u9891\u7387\u901f\u5ea6\u4e0d\u80fd\u88ab\u81ea\u52a8\u68c0\u6d4b\u5230\u3002\u6b63\u5728\u9690\u85cf\u81ea\u52a8\u68c0\u6d4b\u3002"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->auto:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->show:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "read":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "Speedup"

    const-string v4, "\u9891\u7387\u901f\u5ea6\u4e0d\u80fd\u88ab\u81ea\u52a8\u68c0\u6d4b\u5230\u3002\u6b63\u5728\u9690\u85cf\u81ea\u52a8\u68c0\u6d4b\u3002"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->auto:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    iget-object v3, p0, Lcom/tutusw/phonespeedup/IntroActivity;->show:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getVersion()I
    .locals 4

    .prologue
    .line 223
    const-string v1, "Speedup"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tutusw/phonespeedup/IntroActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/IntroActivity;->settings:Landroid/content/SharedPreferences;

    .line 224
    iget-object v1, p0, Lcom/tutusw/phonespeedup/IntroActivity;->settings:Landroid/content/SharedPreferences;

    const-string v2, "androidVersion"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 225
    .local v0, "i":I
    return v0
.end method

.method private hideSelections()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 256
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->cupcake:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->galaxy:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->dext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->qsd:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->tattoo:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->custom:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->sholes:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->moment:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->pulse:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->liquid:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->msm7x27:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->msm7x30:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->qsd8x55:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    return-void
.end method

.method private launchCupcake()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tutusw/phonespeedup/Setcpu;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/IntroActivity;->finish()V

    .line 214
    return-void
.end method

.method private launchMarket()V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://search?q=pname:com.mhuang.overclocking"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method private readInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 272
    const/4 v4, 0x0

    .line 273
    .local v4, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 274
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 275
    .local v2, "ins":Ljava/io/InputStream;
    const-string v5, ""

    .line 277
    .local v5, "lines":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .end local v2    # "ins":Ljava/io/InputStream;
    .local v3, "ins":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 279
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    if-nez v4, :cond_0

    .line 287
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 288
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .line 293
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 280
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :cond_0
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v5

    goto :goto_0

    .line 282
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "ins":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 287
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 288
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 289
    :catch_1
    move-exception v6

    goto :goto_1

    .line 285
    :catchall_0
    move-exception v6

    .line 287
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 288
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 292
    :goto_4
    throw v6

    .line 289
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_4

    .line 285
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 282
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catch_4
    move-exception v6

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catch_5
    move-exception v6

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/IntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 239
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    return-void
.end method

.method private showWarning()V
    .locals 3

    .prologue
    .line 243
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 244
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const-string v1, "\u9700\u8981Root\u6743\u9650"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 246
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tutusw/phonespeedup/IntroActivity$1;

    invoke-direct {v2, p0}, Lcom/tutusw/phonespeedup/IntroActivity$1;-><init>(Lcom/tutusw/phonespeedup/IntroActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 252
    const p0, 0x0

    invoke-virtual {v2, v2, p0}, Lcom/tutusw/phonespeedup/IntroActivity$1;->onClick(Landroid/content/DialogInterface;I)V

    .line 253
    return-void
.end method

.method private storeConstants(Ljava/lang/String;)V
    .locals 2
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "device"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    return-void
.end method

.method private storeVersion(I)V
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 231
    const-string v1, "Speedup"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tutusw/phonespeedup/IntroActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/IntroActivity;->settings:Landroid/content/SharedPreferences;

    .line 232
    iget-object v1, p0, Lcom/tutusw/phonespeedup/IntroActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "androidVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/IntroActivity;->requestWindowFeature(I)Z

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/IntroActivity;->getVersion()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/IntroActivity;->launchCupcake()V

    .line 55
    :goto_0
    return-void

    .line 44
    :cond_0
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/IntroActivity;->setContentView(I)V

    .line 45
    const-string v0, "Speedup"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->settings:Landroid/content/SharedPreferences;

    .line 46
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/IntroActivity;->getVersion()I

    move-result v0

    const/16 v1, 0x3a

    if-ge v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    const-string v2, "\u9ed8\u8ba4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/IntroActivity;->buildUi()V

    goto :goto_0
.end method
