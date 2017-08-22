.class Lcom/novel/reader/MainActivity$RestoreTask$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/MainActivity$RestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/novel/reader/MainActivity$RestoreTask;


# direct methods
.method constructor <init>(Lcom/novel/reader/MainActivity$RestoreTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/novel/reader/MainActivity$RestoreTask;

    .prologue
    .line 945
    iput-object p1, p0, Lcom/novel/reader/MainActivity$RestoreTask$1;->this$1:Lcom/novel/reader/MainActivity$RestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 947
    iget-object v0, p0, Lcom/novel/reader/MainActivity$RestoreTask$1;->this$1:Lcom/novel/reader/MainActivity$RestoreTask;

    iget-object v0, v0, Lcom/novel/reader/MainActivity$RestoreTask;->this$0:Lcom/novel/reader/MainActivity;

    invoke-virtual {v0}, Lcom/novel/reader/MainActivity;->finish()V

    .line 948
    return-void
.end method
