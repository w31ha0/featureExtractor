.class Lcom/biznessapps/utils/ViewUtils$1$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/ViewUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/utils/ViewUtils$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/utils/ViewUtils$1;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/biznessapps/utils/ViewUtils$1$1;->this$0:Lcom/biznessapps/utils/ViewUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/biznessapps/utils/ViewUtils$1$1;->this$0:Lcom/biznessapps/utils/ViewUtils$1;

    iget-object v0, v0, Lcom/biznessapps/utils/ViewUtils$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/biznessapps/layout/R$string;->twitting_successful:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;I)V

    .line 145
    return-void
.end method
