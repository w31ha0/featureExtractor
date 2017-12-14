.class Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$2;
.super Ljava/lang/Object;
.source "ProfilesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$2;->this$1:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

    iput p2, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$2;->val$id:I

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$2;->this$1:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;->access$0(Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;)Lcom/tutusw/phonespeedup/ProfilesActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tutusw/phonespeedup/ProfilesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tutusw/phonespeedup/ProfileEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "row_id"

    iget v2, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$2;->val$id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$2;->this$1:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;->access$0(Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;)Lcom/tutusw/phonespeedup/ProfilesActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tutusw/phonespeedup/ProfilesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 151
    return-void
.end method
