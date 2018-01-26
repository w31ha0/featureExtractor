.class Lcom/biznessapps/fragments/contacts/ContactsFragment$3;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/contacts/ContactsFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/contacts/ContactsFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$3;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$3;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->access$000(Lcom/biznessapps/fragments/contacts/ContactsFragment;)Lcom/biznessapps/model/LocationItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$3;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$3;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->access$000(Lcom/biznessapps/fragments/contacts/ContactsFragment;)Lcom/biznessapps/model/LocationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/model/LocationItem;->getWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->openLinkInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method
