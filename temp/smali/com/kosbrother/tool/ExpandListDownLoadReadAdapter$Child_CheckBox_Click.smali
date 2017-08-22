.class Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;
.super Ljava/lang/Object;
.source "ExpandListDownLoadReadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Child_CheckBox_Click"
.end annotation


# instance fields
.field private final childPosition:I

.field private final groupPosition:I

.field final synthetic this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;


# direct methods
.method constructor <init>(Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I

    .prologue
    .line 228
    iput-object p1, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p2, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->groupPosition:I

    .line 230
    iput p3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->childPosition:I

    .line 231
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->childPosition:I

    invoke-virtual {v3, v4}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kosbrother/tool/ChildArticle;->toggle()V

    .line 237
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v1

    .line 238
    .local v1, "childrenCount":I
    const/4 v0, 0x1

    .line 239
    .local v0, "childrenAllIsChecked":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 240
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3, v2}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kosbrother/tool/ChildArticle;->getChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 239
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3, v0}, Lcom/kosbrother/tool/Group;->setChecked(Z)V

    .line 247
    invoke-static {}, Lcom/novel/reader/MyDownloadArticleActivity;->showCallBackAction()V

    .line 250
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    invoke-virtual {v3}, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->notifyDataSetChanged()V

    .line 252
    return-void
.end method
