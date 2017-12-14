.class Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;
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

.field private final synthetic val$enabled:I

.field private final synthetic val$governor:Ljava/lang/String;

.field private final synthetic val$id:I

.field private final synthetic val$max:I

.field private final synthetic val$min:I

.field private final synthetic val$param1:I

.field private final synthetic val$param2:I

.field private final synthetic val$priority:I

.field private final synthetic val$profile_id:I


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;IIIIIILjava/lang/String;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->this$1:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

    iput p2, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$id:I

    iput p3, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$enabled:I

    iput p4, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$priority:I

    iput p5, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$profile_id:I

    iput p6, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$max:I

    iput p7, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$min:I

    iput-object p8, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$governor:Ljava/lang/String;

    iput p9, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$param1:I

    iput p10, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$param2:I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->this$1:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;->access$0(Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;)Lcom/tutusw/phonespeedup/ProfilesActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->access$0(Lcom/tutusw/phonespeedup/ProfilesActivity;)Lcom/tutusw/phonespeedup/DBHelper;

    move-result-object v0

    iget v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$id:I

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/DBHelper;->deleteById(I)V

    .line 116
    iget v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$enabled:I

    if-nez v0, :cond_0

    .line 117
    const/4 v2, 0x1

    .line 123
    .local v2, "setEnabled":I
    :goto_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->this$1:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;->access$0(Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;)Lcom/tutusw/phonespeedup/ProfilesActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->access$0(Lcom/tutusw/phonespeedup/ProfilesActivity;)Lcom/tutusw/phonespeedup/DBHelper;

    move-result-object v0

    iget v1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$priority:I

    .line 125
    iget v3, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$profile_id:I

    .line 126
    iget v4, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$max:I

    .line 127
    iget v5, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$min:I

    .line 128
    iget-object v6, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$governor:Ljava/lang/String;

    .line 129
    iget v7, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$param1:I

    .line 130
    iget v8, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->val$param2:I

    .line 131
    const/4 v9, 0x0

    .line 123
    invoke-virtual/range {v0 .. v9}, Lcom/tutusw/phonespeedup/DBHelper;->insert(IIIIILjava/lang/String;III)V

    .line 133
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;->this$1:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;->access$0(Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;)Lcom/tutusw/phonespeedup/ProfilesActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/ProfilesActivity;->access$1(Lcom/tutusw/phonespeedup/ProfilesActivity;)V

    .line 134
    return-void

    .line 120
    .end local v2    # "setEnabled":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "setEnabled":I
    goto :goto_0
.end method
