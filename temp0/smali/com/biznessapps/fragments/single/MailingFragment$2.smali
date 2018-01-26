.class Lcom/biznessapps/fragments/single/MailingFragment$2;
.super Ljava/lang/Object;
.source "MailingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/MailingFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/MailingFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/MailingFragment;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/biznessapps/fragments/single/MailingFragment$2;->this$0:Lcom/biznessapps/fragments/single/MailingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment$2;->this$0:Lcom/biznessapps/fragments/single/MailingFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/MailingFragment;->access$100(Lcom/biznessapps/fragments/single/MailingFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 108
    return-void
.end method
