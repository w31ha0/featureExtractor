.class Lorg/acra/CrashReportDialog$2;
.super Ljava/lang/Object;
.source "CrashReportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/CrashReportDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/CrashReportDialog;


# direct methods
.method constructor <init>(Lorg/acra/CrashReportDialog;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lorg/acra/CrashReportDialog$2;->this$0:Lorg/acra/CrashReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter;->deletePendingReports()V

    .line 172
    iget-object v0, p0, Lorg/acra/CrashReportDialog$2;->this$0:Lorg/acra/CrashReportDialog;

    invoke-virtual {v0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 173
    return-void
.end method
