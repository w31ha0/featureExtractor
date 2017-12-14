.class Lcom/google/ssearch/Dialog$2;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ssearch/Dialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ssearch/Dialog;


# direct methods
.method constructor <init>(Lcom/google/ssearch/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/ssearch/Dialog$2;->this$0:Lcom/google/ssearch/Dialog;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/ssearch/Dialog$2;->this$0:Lcom/google/ssearch/Dialog;

    invoke-virtual {v0}, Lcom/google/ssearch/Dialog;->finish()V

    .line 94
    return-void
.end method
