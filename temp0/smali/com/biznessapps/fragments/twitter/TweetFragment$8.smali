.class Lcom/biznessapps/fragments/twitter/TweetFragment$8;
.super Ljava/lang/Object;
.source "TweetFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/twitter/TweetFragment;->showInfoDialog()V
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
    .line 212
    iput-object p1, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$8;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 216
    return-void
.end method
