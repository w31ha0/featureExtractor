.class Lcom/biznessapps/fragments/twitter/TweetFragment$5;
.super Ljava/lang/Object;
.source "TweetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/twitter/TweetFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/twitter/TweetFragment;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$5;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$5;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->access$100(Lcom/biznessapps/fragments/twitter/TweetFragment;)V

    .line 173
    return-void
.end method
