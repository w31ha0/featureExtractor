.class final Lorg/chromium/base/metrics/RecordUserAction$1;
.super Ljava/lang/Object;
.source "RecordUserAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lorg/chromium/base/metrics/RecordUserAction$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/base/metrics/RecordUserAction$1;->val$action:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->access$000(Ljava/lang/String;)V

    .line 31
    return-void
.end method
