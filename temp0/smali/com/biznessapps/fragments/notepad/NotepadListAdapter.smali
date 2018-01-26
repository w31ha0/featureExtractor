.class public Lcom/biznessapps/fragments/notepad/NotepadListAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "NotepadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/fragments/notepad/NotepadItem;",
        ">;"
    }
.end annotation


# instance fields
.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private todayCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/notepad/NotepadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/notepad/NotepadItem;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->notepad_list_row:I

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d h:m a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadListAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadListAdapter;->todayCalendar:Ljava/util/Calendar;

    .line 32
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadListAdapter;->todayCalendar:Ljava/util/Calendar;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    if-nez p2, :cond_1

    .line 39
    iget-object v6, p0, Lcom/biznessapps/fragments/notepad/NotepadListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/biznessapps/fragments/notepad/NotepadListAdapter;->layoutItemResourceId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    new-instance v3, Lcom/biznessapps/layout/adapters/ListItemHolder$NotepadItem;

    invoke-direct {v3}, Lcom/biznessapps/layout/adapters/ListItemHolder$NotepadItem;-><init>()V

    .line 41
    .local v3, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$NotepadItem;
    sget v6, Lcom/biznessapps/layout/R$id;->note_title:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Lcom/biznessapps/layout/adapters/ListItemHolder$NotepadItem;->setNoteTitleView(Landroid/widget/TextView;)V

    .line 42
    sget v6, Lcom/biznessapps/layout/R$id;->note_date:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Lcom/biznessapps/layout/adapters/ListItemHolder$NotepadItem;->setNoteDateView(Landroid/widget/TextView;)V

    .line 43
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :goto_0
    iget-object v6, p0, Lcom/biznessapps/fragments/notepad/NotepadListAdapter;->items:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/fragments/notepad/NotepadItem;

    .line 49
    .local v4, "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {v3}, Lcom/biznessapps/layout/adapters/ListItemHolder$NotepadItem;->getNoteTitleView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4}, Lcom/biznessapps/fragments/notepad/NotepadItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v4}, Lcom/biznessapps/fragments/notepad/NotepadItem;->getDate()J

    move-result-wide v0

    .line 54
    .local v0, "dateStr":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 57
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 58
    .local v5, "itemCalendar":Ljava/util/Calendar;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 59
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/biznessapps/fragments/notepad/NotepadListAdapter;->todayCalendar:Ljava/util/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/biznessapps/fragments/notepad/NotepadListAdapter;->todayCalendar:Ljava/util/Calendar;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 61
    invoke-virtual {v3}, Lcom/biznessapps/layout/adapters/ListItemHolder$NotepadItem;->getNoteDateView()Landroid/widget/TextView;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->today:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "dateStr":J
    .end local v5    # "itemCalendar":Ljava/util/Calendar;
    :cond_0
    :goto_1
    return-object p2

    .line 45
    .end local v3    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$NotepadItem;
    .end local v4    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/layout/adapters/ListItemHolder$NotepadItem;

    .restart local v3    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$NotepadItem;
    goto :goto_0

    .line 63
    .restart local v0    # "dateStr":J
    .restart local v4    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    .restart local v5    # "itemCalendar":Ljava/util/Calendar;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/biznessapps/layout/adapters/ListItemHolder$NotepadItem;->getNoteDateView()Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/fragments/notepad/NotepadListAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 65
    .end local v5    # "itemCalendar":Ljava/util/Calendar;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
