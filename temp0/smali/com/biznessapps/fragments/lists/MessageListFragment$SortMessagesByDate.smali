.class Lcom/biznessapps/fragments/lists/MessageListFragment$SortMessagesByDate;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/lists/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortMessagesByDate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/biznessapps/model/MessageItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/lists/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/biznessapps/fragments/lists/MessageListFragment;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/fragments/lists/MessageListFragment$SortMessagesByDate;->this$0:Lcom/biznessapps/fragments/lists/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/fragments/lists/MessageListFragment;Lcom/biznessapps/fragments/lists/MessageListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/fragments/lists/MessageListFragment;
    .param p2, "x1"    # Lcom/biznessapps/fragments/lists/MessageListFragment$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/lists/MessageListFragment$SortMessagesByDate;-><init>(Lcom/biznessapps/fragments/lists/MessageListFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/biznessapps/model/MessageItem;Lcom/biznessapps/model/MessageItem;)I
    .locals 2
    .param p1, "o1"    # Lcom/biznessapps/model/MessageItem;
    .param p2, "o2"    # Lcom/biznessapps/model/MessageItem;

    .prologue
    .line 57
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 60
    :cond_0
    if-nez p1, :cond_1

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    if-nez p2, :cond_2

    .line 64
    const/4 v0, -0x1

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p2}, Lcom/biznessapps/model/MessageItem;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biznessapps/model/MessageItem;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Lcom/biznessapps/model/MessageItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/biznessapps/model/MessageItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/fragments/lists/MessageListFragment$SortMessagesByDate;->compare(Lcom/biznessapps/model/MessageItem;Lcom/biznessapps/model/MessageItem;)I

    move-result v0

    return v0
.end method
