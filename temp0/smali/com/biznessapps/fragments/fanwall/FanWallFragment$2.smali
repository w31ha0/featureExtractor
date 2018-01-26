.class Lcom/biznessapps/fragments/fanwall/FanWallFragment$2;
.super Ljava/lang/Object;
.source "FanWallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/fanwall/FanWallFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$2;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$2;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->access$000(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V

    .line 162
    return-void
.end method
