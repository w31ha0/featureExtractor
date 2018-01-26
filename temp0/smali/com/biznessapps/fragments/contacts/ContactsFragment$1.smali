.class Lcom/biznessapps/fragments/contacts/ContactsFragment$1;
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
    .line 176
    iput-object p1, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$1;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$1;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->access$000(Lcom/biznessapps/fragments/contacts/ContactsFragment;)Lcom/biznessapps/model/LocationItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$1;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$1;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->access$000(Lcom/biznessapps/fragments/contacts/ContactsFragment;)Lcom/biznessapps/model/LocationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/model/LocationItem;->getLongitude()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$1;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-static {v2}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->access$000(Lcom/biznessapps/fragments/contacts/ContactsFragment;)Lcom/biznessapps/model/LocationItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/LocationItem;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->openGoogleMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method
