.class Lorg/acra/ErrorReporter$1;
.super Ljava/lang/Thread;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;)Lorg/acra/ErrorReporter$ReportsSenderWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lorg/acra/ErrorReporter$1;->this$0:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 714
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 715
    invoke-static {}, Lorg/acra/ErrorReporter;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 716
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 717
    return-void
.end method
