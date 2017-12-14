.class public Lcom/tutusw/phonespeedup/Home;
.super Landroid/app/Activity;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutusw/phonespeedup/Home$clicker;,
        Lcom/tutusw/phonespeedup/Home$seeker;,
        Lcom/tutusw/phonespeedup/Home$seekerFocus;
    }
.end annotation


# static fields
.field public static final sholesinfo:Z


# instance fields
.field about:Landroid/widget/Button;

.field advanced:Landroid/widget/Button;

.field autorefresh:Landroid/widget/CheckBox;

.field boot:Landroid/widget/CheckBox;

.field bounds:[I

.field chooseGovernor:Landroid/widget/Spinner;

.field clicker:Lcom/tutusw/phonespeedup/Home$clicker;

.field context:Landroid/content/Context;

.field public cores:I

.field public defaultMax:I

.field public defaultMin:I

.field donate:Landroid/widget/Button;

.field editor:Landroid/content/SharedPreferences$Editor;

.field public freq:[I

.field public freqText:[Ljava/lang/String;

.field public governors:[Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field hasRoot:Z

.field in:Ljava/io/DataInputStream;

.field info:Landroid/widget/Button;

.field public limitMax:I

.field public limitMin:I

.field maxSeek:Landroid/widget/SeekBar;

.field maxText:Landroid/widget/TextView;

.field meterMax:Landroid/widget/TextView;

.field meterMin:Landroid/widget/TextView;

.field minSeek:Landroid/widget/SeekBar;

.field minText:Landroid/widget/TextView;

.field note:Landroid/widget/TextView;

.field os:Ljava/io/DataOutputStream;

.field process:Ljava/lang/Process;

.field profiles:Landroid/widget/Button;

.field refresh:Landroid/widget/Button;

.field refreshCounter:Ljava/lang/Runnable;

.field seeker:Lcom/tutusw/phonespeedup/Home$seeker;

.field seekerFocus:Lcom/tutusw/phonespeedup/Home$seekerFocus;

.field settings:Landroid/content/SharedPreferences;

.field status:Landroid/widget/TextView;

.field stopRefresh:Z

.field versionText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/tutusw/phonespeedup/Home$clicker;

    invoke-direct {v0, p0, v2}, Lcom/tutusw/phonespeedup/Home$clicker;-><init>(Lcom/tutusw/phonespeedup/Home;Lcom/tutusw/phonespeedup/Home$clicker;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/Home;->clicker:Lcom/tutusw/phonespeedup/Home$clicker;

    .line 57
    new-instance v0, Lcom/tutusw/phonespeedup/Home$seekerFocus;

    invoke-direct {v0, p0, v2}, Lcom/tutusw/phonespeedup/Home$seekerFocus;-><init>(Lcom/tutusw/phonespeedup/Home;Lcom/tutusw/phonespeedup/Home$seekerFocus;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/Home;->seekerFocus:Lcom/tutusw/phonespeedup/Home$seekerFocus;

    .line 58
    new-instance v0, Lcom/tutusw/phonespeedup/Home$seeker;

    invoke-direct {v0, p0, v2}, Lcom/tutusw/phonespeedup/Home$seeker;-><init>(Lcom/tutusw/phonespeedup/Home;Lcom/tutusw/phonespeedup/Home$seeker;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/Home;->seeker:Lcom/tutusw/phonespeedup/Home$seeker;

    .line 65
    iput-boolean v4, p0, Lcom/tutusw/phonespeedup/Home;->hasRoot:Z

    iput-boolean v3, p0, Lcom/tutusw/phonespeedup/Home;->stopRefresh:Z

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/Home;->handler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/Home;)V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Home;->refresh()V

    return-void
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/Home;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/Home;->launchClass(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$10(Lcom/tutusw/phonespeedup/Home;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/Home;->storeGovernor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/tutusw/phonespeedup/Home;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Home;->readGovernor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/tutusw/phonespeedup/Home;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/Home;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/tutusw/phonespeedup/Home;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0, p1, p2}, Lcom/tutusw/phonespeedup/Home;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5(Lcom/tutusw/phonespeedup/Home;II)V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0, p1, p2}, Lcom/tutusw/phonespeedup/Home;->setFrequency(II)V

    return-void
.end method

.method static synthetic access$6(Lcom/tutusw/phonespeedup/Home;)I
    .locals 1

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Home;->readFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/tutusw/phonespeedup/Home;)V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Home;->updateWidget()V

    return-void
.end method

.method static synthetic access$8(Lcom/tutusw/phonespeedup/Home;I)I
    .locals 1

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/Home;->getIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/tutusw/phonespeedup/Home;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/Home;->setGovernor(Ljava/lang/String;)V

    return-void
.end method

.method private checkChmod()Z
    .locals 5

    .prologue
    .line 724
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "sh"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    .line 725
    new-instance v3, Ljava/io/DataOutputStream;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    .line 726
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 727
    .local v2, "read":Ljava/io/DataInputStream;
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    const-string v4, "ls -l /sys/devices/system/cpu/cpu0\n"

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "ls":Ljava/lang/String;
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    const-string v4, "exit\n"

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 730
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 731
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 732
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 733
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 734
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 736
    const-string v3, "rwxrwxrwx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 743
    .end local v1    # "ls":Ljava/lang/String;
    .end local v2    # "read":Ljava/io/DataInputStream;
    :goto_0
    return v3

    .line 738
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 739
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    const-string v4, "IO Error [chmod()]"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 740
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    const-string v4, "\u9519\u8bef"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private chmod()V
    .locals 3

    .prologue
    .line 748
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    .line 749
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    .line 751
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    const-string v1, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    const-string v1, "chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/*\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    const-string v1, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/ondemand/\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    const-string v1, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/stats/\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    const-string v1, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/stats/*\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    const-string v1, "chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/ondemand/*\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    const-string v1, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/conservative/\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    const-string v1, "chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/conservative/*\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    const-string v1, "exit\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 761
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 762
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 763
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v0

    goto :goto_0

    .line 764
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private convertIntArray([I)[Ljava/lang/String;
    .locals 4
    .param p1, "sarray"    # [I

    .prologue
    .line 838
    if-eqz p1, :cond_1

    .line 839
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 840
    .local v1, "intarray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    move-object v2, v1

    .line 845
    .end local v0    # "i":I
    .end local v1    # "intarray":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 841
    .restart local v0    # "i":I
    .restart local v1    # "intarray":[Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    .end local v0    # "i":I
    .end local v1    # "intarray":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private convertStringArray([Ljava/lang/String;)[I
    .locals 3
    .param p1, "sarray"    # [Ljava/lang/String;

    .prologue
    .line 827
    if-eqz p1, :cond_1

    .line 828
    array-length v2, p1

    new-array v1, v2, [I

    .line 829
    .local v1, "intarray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    move-object v2, v1

    .line 834
    .end local v0    # "i":I
    .end local v1    # "intarray":[I
    :goto_1
    return-object v2

    .line 830
    .restart local v0    # "i":I
    .restart local v1    # "intarray":[I
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 829
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    .end local v0    # "i":I
    .end local v1    # "intarray":[I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getIndex(I)I
    .locals 2
    .param p1, "f"    # I

    .prologue
    .line 703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 708
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    move v1, v0

    .line 705
    goto :goto_1

    .line 703
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getIndex(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "f"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/String;

    .prologue
    .line 712
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 717
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 713
    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v0

    .line 714
    goto :goto_1

    .line 712
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getRoot()Z
    .locals 6

    .prologue
    const-string v5, "\u9519\u8bef"

    .line 630
    const/4 v1, 0x1

    .line 632
    .local v1, "hasRoot":Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    .line 633
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    .line 634
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    const-string v3, "exit\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 636
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 637
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    const/4 v1, 0x0

    .line 643
    :cond_0
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_1

    .line 645
    :try_start_1
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 651
    :cond_1
    :goto_0
    return v1

    .line 640
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 641
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 643
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_1

    .line 645
    :try_start_2
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 646
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 647
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    const-string v3, "\u9519\u8bef"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 642
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 643
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    if-eqz v3, :cond_2

    .line 645
    :try_start_3
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 650
    :cond_2
    :goto_1
    throw v2

    .line 646
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 647
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    const-string v4, "\u9519\u8bef"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 647
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    const-string v3, "\u9519\u8bef"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private launchClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 625
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/Home;->startActivity(Landroid/content/Intent;)V

    .line 626
    return-void
.end method

.method private readFrequency()I
    .locals 1

    .prologue
    .line 578
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/Home;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private readGovernor()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ""

    .line 588
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Home;->readGovernorAttempt()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "i":Ljava/lang/String;
    const/4 v0, 0x0

    .line 591
    .local v0, "c":I
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, ""

    if-eq v1, v3, :cond_1

    .line 602
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 593
    :cond_1
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Home;->readGovernorAttempt()Ljava/lang/String;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_2

    const-string v2, ""

    if-ne v1, v3, :cond_3

    .line 595
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 597
    :cond_3
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readGovernorAttempt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-direct {p0, v1}, Lcom/tutusw/phonespeedup/Home;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "out":Ljava/lang/String;
    return-object v0
.end method

.method private readInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 804
    iput-object v5, p0, Lcom/tutusw/phonespeedup/Home;->in:Ljava/io/DataInputStream;

    .line 805
    const/4 v1, 0x0

    .line 806
    .local v1, "line":Ljava/lang/String;
    const-string v2, ""

    .line 808
    .local v2, "lines":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/tutusw/phonespeedup/Home;->in:Ljava/io/DataInputStream;

    .line 809
    :goto_0
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 818
    :try_start_1
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 823
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 810
    :cond_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 813
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v5

    .line 814
    goto :goto_1

    .line 819
    :catch_1
    move-exception v3

    move-object v0, v3

    move-object v3, v5

    .line 820
    goto :goto_1

    .line 816
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 818
    :try_start_4
    iget-object v4, p0, Lcom/tutusw/phonespeedup/Home;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 822
    throw v3

    .line 819
    :catch_2
    move-exception v3

    move-object v0, v3

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v5

    .line 820
    goto :goto_1

    .line 819
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    move-object v0, v3

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v5

    .line 820
    goto :goto_1
.end method

.method private readMaxMinFrequency()[I
    .locals 3

    .prologue
    .line 570
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 571
    .local v0, "out":[I
    const/4 v1, 0x0

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/Home;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 572
    const/4 v1, 0x1

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/Home;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 573
    return-object v0

    .line 570
    nop

    :array_0
    .array-data 4
        0x210
        0x210
    .end array-data
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 791
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Home;->readFrequency()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Home;->readMaxMinFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/Home;->bounds:[I

    .line 793
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->meterMax:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->bounds:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u6700\u5927\u503c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->meterMin:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->bounds:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u6700\u5c0f\u503c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->chooseGovernor:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Home;->readGovernor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home;->governors:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/tutusw/phonespeedup/Home;->getIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 796
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->note:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9891\u7387\u8c03\u8282\u65b9\u5f0f: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Home;->readGovernor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    return-void
.end method

.method private setFrequency(II)V
    .locals 7
    .param p1, "f"    # I
    .param p2, "g"    # I

    .prologue
    const/4 v5, 0x0

    const-string v6, "startBoot"

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    const-string v3, "echo "

    .line 526
    if-lt p1, p2, :cond_2

    .line 529
    iget v3, p0, Lcom/tutusw/phonespeedup/Home;->limitMin:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/tutusw/phonespeedup/Home;->limitMin:I

    if-lt p2, v3, :cond_0

    iget v3, p0, Lcom/tutusw/phonespeedup/Home;->limitMax:I

    if-gt p1, v3, :cond_0

    iget v3, p0, Lcom/tutusw/phonespeedup/Home;->limitMax:I

    if-le p2, v3, :cond_1

    .line 530
    :cond_0
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    const-string v4, "startBoot"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 531
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "startBoot"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 532
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 533
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->boot:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 534
    const-string v3, "\u60a8\u9009\u62e9\u7684\u9891\u7387\u901f\u5ea6\u6709\u6f5c\u5728\u5371\u9669\uff01\u8bf7\u4e0d\u8981\u542f\u52a8\u8bbe\u7f6e\uff01\uff01"

    invoke-direct {p0, v3}, Lcom/tutusw/phonespeedup/Home;->showToast(Ljava/lang/String;)V

    .line 540
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "t":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 551
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->meterMax:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    div-int/lit16 v5, p1, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " \u6700\u5927\u503c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->meterMin:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    div-int/lit16 v5, p2, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " \u6700\u5c0f\u503c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Home;->refresh()V

    .line 555
    invoke-direct {p0, p1, p2}, Lcom/tutusw/phonespeedup/Home;->storeFrequency(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    const-string v4, "\u9519\u8bef"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setGovernor(Ljava/lang/String;)V
    .locals 3
    .param p1, "set"    # Ljava/lang/String;

    .prologue
    const-string v1, "echo "

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    .line 610
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    const-string v2, "\u8c03\u8282\u5668\u9519\u8bef"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showChangeWarning()V
    .locals 3

    .prologue
    .line 849
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 850
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const-string v1, "\u60a8\u7684\u8bbe\u7f6e\u5df2\u4fdd\u5b58"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 851
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tutusw/phonespeedup/Home$3;

    invoke-direct {v2, p0}, Lcom/tutusw/phonespeedup/Home$3;-><init>(Lcom/tutusw/phonespeedup/Home;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 856
    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 858
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 859
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 692
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 693
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 694
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 697
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->context:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 698
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 699
    return-void
.end method

.method private storeFrequency(II)V
    .locals 2
    .param p1, "max"    # I
    .param p2, "min"    # I

    .prologue
    .line 686
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "min"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 687
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "max"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 688
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 689
    return-void
.end method

.method private storeGovernor(Ljava/lang/String;)V
    .locals 2
    .param p1, "governor"    # Ljava/lang/String;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "stringGovernor"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 682
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 683
    return-void
.end method

.method private updateWidget()V
    .locals 2

    .prologue
    .line 800
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Speedup.intent.action.updatewidget"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/Home;->sendBroadcast(Landroid/content/Intent;)V

    .line 801
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->context:Landroid/content/Context;

    .line 78
    const-string v16, "Speedup"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/tutusw/phonespeedup/Home;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "device"

    const-string v18, "htc_msm"

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "device":Ljava/lang/String;
    new-instance v5, Lcom/tutusw/phonespeedup/Constants;

    invoke-direct {v5, v7}, Lcom/tutusw/phonespeedup/Constants;-><init>(Ljava/lang/String;)V

    .line 84
    .local v5, "constants":Lcom/tutusw/phonespeedup/Constants;
    invoke-direct/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->checkChmod()Z

    move-result v16

    if-nez v16, :cond_0

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->getRoot()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->chmod()V

    .line 93
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->chmod()V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "firstLaunch"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->showChangeWarning()V

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->readMaxMinFrequency()[I

    move-result-object v6

    .line 102
    .local v6, "def":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v16, v0

    const-string v17, "max"

    const/16 v18, 0x0

    aget v18, v6, v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v16, v0

    const-string v17, "min"

    const/16 v18, 0x1

    aget v18, v6, v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v16, v0

    const-string v17, "stringGovernor"

    invoke-direct/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->readGovernor()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    .end local v6    # "def":[I
    :cond_1
    const-string v16, "custom"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 110
    :try_start_0
    const-string v16, "Speedup"

    const-string v17, "\u81ea\u5b9a\u4e49\u914d\u7f6e"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v13, 0x0

    .line 112
    .local v13, "read":Ljava/lang/String;
    const-string v16, "/sdcard/Speedup.txt"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 114
    if-eqz v13, :cond_2

    const-string v16, ""

    move-object v0, v13

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 115
    :cond_2
    const-string v16, "/system/sd/Speedup.txt"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 117
    :cond_3
    if-eqz v13, :cond_4

    const-string v16, ""

    move-object v0, v13

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 118
    :cond_4
    const-string v16, "/system/Speedup"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 120
    :cond_5
    if-eqz v13, :cond_6

    const-string v16, ""

    move-object v0, v13

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 121
    :cond_6
    const-string v16, "/data/local/Speedup"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 123
    :cond_7
    if-eqz v13, :cond_11

    const-string v16, ""

    move-object v0, v13

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_11

    .line 124
    const-string v16, "Speedup"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "\u81ea\u5b9a\u4e49\u9891\u7387\u901f\u5ea6\u88ab\u68c0\u6d4b\u5230: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->convertStringArray([Ljava/lang/String;)[I

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->freq:[I

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->convertIntArray([I)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->defaultMax:I

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    const/16 v17, 0x4b00

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->defaultMin:I

    .line 140
    :goto_1
    const v16, 0x3b9aca00

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->limitMax:I

    .line 141
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->limitMin:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v13    # "read":Ljava/lang/String;
    :cond_8
    :goto_2
    const-string v16, "custom"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9

    const-string v16, "\u81ea\u52a8\u68c0\u6d4b"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 200
    invoke-virtual {v5}, Lcom/tutusw/phonespeedup/Constants;->getFreq()[I

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->freq:[I

    .line 201
    invoke-virtual {v5}, Lcom/tutusw/phonespeedup/Constants;->getFreqText()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    .line 202
    invoke-virtual {v5}, Lcom/tutusw/phonespeedup/Constants;->getDefaultMax()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->defaultMax:I

    .line 203
    invoke-virtual {v5}, Lcom/tutusw/phonespeedup/Constants;->getDefaultMin()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->defaultMin:I

    .line 204
    invoke-virtual {v5}, Lcom/tutusw/phonespeedup/Constants;->getLimitMax()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->limitMax:I

    .line 205
    invoke-virtual {v5}, Lcom/tutusw/phonespeedup/Constants;->getLimitMin()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->limitMin:I

    .line 208
    :cond_9
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->requestWindowFeature(I)Z

    .line 209
    const v16, 0x7f03000a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->setContentView(I)V

    .line 212
    const v16, 0x7f08001e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    .line 213
    const v16, 0x7f08006b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->note:Landroid/widget/TextView;

    .line 214
    const v16, 0x7f080020

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->meterMax:Landroid/widget/TextView;

    .line 215
    const v16, 0x7f080021

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->meterMin:Landroid/widget/TextView;

    .line 216
    const v16, 0x7f080024

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->maxText:Landroid/widget/TextView;

    .line 217
    const v16, 0x7f080026

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->minText:Landroid/widget/TextView;

    .line 218
    const v16, 0x7f080032

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->versionText:Landroid/widget/TextView;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->versionText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->versionText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const v16, 0x7f080025

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    .line 227
    const v16, 0x7f080027

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    .line 228
    const v16, 0x7f08002f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->chooseGovernor:Landroid/widget/Spinner;

    .line 229
    const v16, 0x7f080031

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->boot:Landroid/widget/CheckBox;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->readFrequency()I

    move-result v18

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " MHz"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->boot:Landroid/widget/CheckBox;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->clicker:Lcom/tutusw/phonespeedup/Home$clicker;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->readMaxMinFrequency()[I

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->bounds:[I

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->meterMax:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->bounds:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " \u6700\u5927\u503c"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->meterMin:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->bounds:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " \u6700\u5c0f\u503c"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const-string v16, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->governors:[Ljava/lang/String;

    .line 262
    new-instance v15, Landroid/widget/ArrayAdapter;

    .line 263
    const v16, 0x1090008

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->governors:[Ljava/lang/String;

    move-object/from16 v17, v0

    .line 262
    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 265
    .local v15, "spinnerArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    const v16, 0x1090009

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->chooseGovernor:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->chooseGovernor:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    new-instance v17, Lcom/tutusw/phonespeedup/Home$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home$1;-><init>(Lcom/tutusw/phonespeedup/Home;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "startBoot"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->boot:Landroid/widget/CheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    :cond_a
    new-instance v16, Lcom/tutusw/phonespeedup/Home$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home$2;-><init>(Lcom/tutusw/phonespeedup/Home;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->refreshCounter:Ljava/lang/Runnable;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "autorefresh"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->handler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->refreshCounter:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "profilesOn"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 306
    new-instance v10, Landroid/content/Intent;

    const-class v16, Lcom/tutusw/phonespeedup/ProfilesService;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v10, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 311
    .end local v10    # "i":Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->chooseGovernor:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->readGovernor()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->governors:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/tutusw/phonespeedup/Home;->getIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Spinner;->setSelection(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->note:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "\u9891\u7387\u8c03\u8282\u65b9\u5f0f: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->readGovernor()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tutusw/phonespeedup/Home;->hasRoot:Z

    move/from16 v16, v0

    if-nez v16, :cond_d

    .line 320
    const-string v16, "\u6ca1\u6709\u68c0\u6d4b\u5230Root\u6743\u9650\u8bbf\u95ee\u3002\u60a8\u5426\u5141\u8bb8\u4e86\u5e94\u7528\u7a0b\u5e8f\u7684Root\u6743\u9650\u8bbf\u95ee\uff1f\u53ea\u80fd\u5728\u53ea\u8bfb\u6a21\u5f0f\u4e0b\u8fdb\u884c\u64cd\u4f5c\u3002"

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/tutusw/phonespeedup/Home;->showToast(Ljava/lang/String;I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->bounds:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->getIndex(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->bounds:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->getIndex(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->boot:Landroid/widget/CheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->chooseGovernor:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->versionText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->versionText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " \u53ea\u8bfb"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "cores"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->cores:I

    .line 338
    const v16, 0x7f080023

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 339
    .local v4, "background":Landroid/widget/LinearLayout;
    const v16, 0x7f080022

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ScrollView;

    .line 340
    .local v14, "scroll":Landroid/widget/ScrollView;
    const v16, 0x7f08002e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/Home;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 342
    .local v9, "governorText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "theme"

    const-string v18, "\u9ed8\u8ba4"

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "\u9ed8\u8ba4"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_e

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "color_background"

    const/high16 v18, -0x1000000

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "color_background"

    const/high16 v18, -0x1000000

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->status:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "color_headertext"

    const/16 v19, -0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->note:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "color_headertext"

    const/16 v19, -0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "color_metertext"

    const/16 v19, -0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "color_metertext"

    const/16 v19, -0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "color_text"

    const/16 v18, -0x1

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->boot:Landroid/widget/CheckBox;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "color_text"

    const/16 v19, -0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->versionText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "color_text"

    const/16 v19, -0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->meterMax:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "color_freqtext"

    const v19, -0xff0100

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->meterMin:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "color_freqtext"

    const v19, -0xff0100

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "drawable_seekbar"

    const/16 v19, 0x3

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/tutusw/phonespeedup/Themes;->getSeekDrawableById(I)I

    move-result v17

    .line 358
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 361
    .local v11, "maxSeekDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/tutusw/phonespeedup/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "drawable_seekbar"

    const/16 v19, 0x3

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/tutusw/phonespeedup/Themes;->getSeekDrawableById(I)I

    move-result v17

    .line 361
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 364
    .local v12, "minSeekDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    .end local v11    # "maxSeekDrawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "minSeekDrawable":Landroid/graphics/drawable/Drawable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/widget/SeekBar;->setMax(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/widget/SeekBar;->setMax(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "max"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutusw/phonespeedup/Home;->defaultMax:I

    move/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->getIndex(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "min"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutusw/phonespeedup/Home;->defaultMin:I

    move/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->getIndex(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->seeker:Lcom/tutusw/phonespeedup/Home$seeker;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->seeker:Lcom/tutusw/phonespeedup/Home$seeker;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->seekerFocus:Lcom/tutusw/phonespeedup/Home$seekerFocus;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->seekerFocus:Lcom/tutusw/phonespeedup/Home$seekerFocus;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "\u6700\u5927\u503c: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->maxSeek:Landroid/widget/SeekBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SeekBar;->getProgress()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "\u6700\u5c0f\u503c: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->minSeek:Landroid/widget/SeekBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SeekBar;->getProgress()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    return-void

    .line 89
    .end local v4    # "background":Landroid/widget/LinearLayout;
    .end local v9    # "governorText":Landroid/widget/TextView;
    .end local v14    # "scroll":Landroid/widget/ScrollView;
    .end local v15    # "spinnerArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_f
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tutusw/phonespeedup/Home;->hasRoot:Z

    goto/16 :goto_0

    .line 138
    .restart local v13    # "read":Ljava/lang/String;
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->defaultMin:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 148
    .end local v13    # "read":Ljava/lang/String;
    :catch_0
    move-exception v16

    move-object/from16 v8, v16

    .line 149
    .local v8, "e":Ljava/lang/Exception;
    const-string v16, "\u81ea\u5b9a\u4e49\u9891\u7387\u901f\u5ea6\u6587\u4ef6\u4e0d\u53ef\u8bfb\u53d6\u6216\u6587\u4ef6\u683c\u5f0f\u88ab\u4e25\u91cd\u635f\u574f\u3002"

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/tutusw/phonespeedup/Home;->showToast(Ljava/lang/String;I)V

    .line 150
    const-string v7, ""

    goto/16 :goto_2

    .line 145
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v13    # "read":Ljava/lang/String;
    :cond_11
    :try_start_2
    const-string v16, "\u65e0\u6cd5\u8bfb\u53d6Speedup\u81ea\u5b9a\u4e49\u914d\u7f6e\u6587\u4ef6\u3002\u6b63\u5728\u6062\u590d\u5230\u9ed8\u8ba4\u503c\u3002\u60a8\u7684SD\u50a8\u5b58\u5361\u662f\u5426\u8fde\u63a5\u5230\u4e86\u7535\u8111\uff1f"

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/tutusw/phonespeedup/Home;->showToast(Ljava/lang/String;I)V

    .line 146
    const-string v7, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 154
    .end local v13    # "read":Ljava/lang/String;
    :cond_12
    const-string v16, "\u81ea\u52a8\u68c0\u6d4b"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 157
    const-string v16, "Speedup"

    const-string v17, "\u6b63\u5728\u81ea\u52a8\u68c0\u6d4b\u9891\u7387\u901f\u5ea6"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v13, 0x0

    .line 159
    .restart local v13    # "read":Ljava/lang/String;
    const-string v16, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 160
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tutusw/phonespeedup/Home;->hasRoot:Z

    move/from16 v16, v0

    if-eqz v16, :cond_15

    const-string v16, ""

    move-object v0, v13

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_13

    if-nez v13, :cond_15

    .line 161
    :cond_13
    invoke-static {}, Lcom/tutusw/phonespeedup/Io;->autodetect()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    .line 166
    :cond_14
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_17

    .line 168
    const-string v16, "Speedup"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "\u9891\u7387\u901f\u5ea6\u88ab\u81ea\u52a8\u68c0\u6d4b\u5230: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->convertStringArray([Ljava/lang/String;)[I

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->freq:[I

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Home;->convertIntArray([I)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->defaultMax:I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    const/16 v17, 0x4b00

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_16

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->defaultMin:I

    .line 183
    :goto_4
    const v16, 0x3b9aca00

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->limitMax:I

    .line 184
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->limitMin:I

    goto/16 :goto_2

    .line 163
    :cond_15
    const-string v16, ""

    move-object v0, v13

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_14

    if-eqz v13, :cond_14

    .line 164
    const-string v16, " "

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/Home;->freqText:[Ljava/lang/String;

    goto/16 :goto_3

    .line 181
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->freq:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/Home;->defaultMin:I

    goto :goto_4

    .line 187
    :cond_17
    const-string v16, "\u65e0\u6cd5\u81ea\u52a8\u68c0\u6d4b\u9891\u7387\u901f\u5ea6\u3002\u8bf7\u6309\u3010Menu\u3011\u952e\u624b\u52a8\u9009\u62e9\u8bbe\u5907\u7c7b\u578b\u3002"

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/tutusw/phonespeedup/Home;->showToast(Ljava/lang/String;I)V

    .line 188
    const-string v7, ""

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 656
    const-string v0, "\u8bbe\u5907\u7c7b\u578b\u9009\u9879"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 657
    const-string v0, "\u7981\u7528\u3010Perflock\u3011"

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 658
    return v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 893
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 894
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 895
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 663
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v4

    .line 677
    :goto_0
    return v1

    .line 666
    :pswitch_0
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "androidVersion"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 667
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "hasRoot"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 668
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 669
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/Home;->startActivity(Landroid/content/Intent;)V

    .line 671
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/Home;->finish()V

    move v1, v5

    .line 672
    goto :goto_0

    .line 674
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tutusw/phonespeedup/PerflockActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/Home;->startActivity(Landroid/content/Intent;)V

    move v1, v5

    .line 675
    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 880
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 881
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 882
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 886
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 887
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 888
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 889
    return-void
.end method
