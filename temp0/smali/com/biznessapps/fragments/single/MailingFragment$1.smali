.class Lcom/biznessapps/fragments/single/MailingFragment$1;
.super Ljava/lang/Object;
.source "MailingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 98
    iput-object p1, p0, Lcom/biznessapps/fragments/single/MailingFragment$1;->this$0:Lcom/biznessapps/fragments/single/MailingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment$1;->this$0:Lcom/biznessapps/fragments/single/MailingFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/MailingFragment;->access$000(Lcom/biznessapps/fragments/single/MailingFragment;)V

    .line 102
    return-void
.end method
