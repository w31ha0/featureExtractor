.class Lcom/biznessapps/fragments/contacts/ContactsFragment$4;
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
    .line 202
    iput-object p1, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$4;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 205
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$4;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->access$000(Lcom/biznessapps/fragments/contacts/ContactsFragment;)Lcom/biznessapps/model/LocationItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$4;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment$4;->this$0:Lcom/biznessapps/fragments/contacts/ContactsFragment;

    invoke-static {v3}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->access$000(Lcom/biznessapps/fragments/contacts/ContactsFragment;)Lcom/biznessapps/model/LocationItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/model/LocationItem;->getEmail()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1, v4, v4}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method
