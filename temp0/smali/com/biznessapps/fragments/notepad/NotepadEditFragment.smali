.class public Lcom/biznessapps/fragments/notepad/NotepadEditFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "NotepadEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private currentDateString:Landroid/widget/TextView;

.field private currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

.field private currentNotePosition:I

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private dayString:Landroid/widget/TextView;

.field private deleteBtn:Landroid/widget/Button;

.field private leftBtn:Landroid/widget/Button;

.field private newNoteBtn:Landroid/widget/ImageButton;

.field private noteEditText:Landroid/widget/EditText;

.field private notelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/notepad/NotepadItem;",
            ">;"
        }
    .end annotation
.end field

.field private rightBtn:Landroid/widget/Button;

.field private sendMailBtn:Landroid/widget/Button;

.field private shouldNotBeSaved:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d h:m a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/notepad/NotepadEditFragment;)Lcom/biznessapps/fragments/notepad/NotepadItem;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/notepad/NotepadEditFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    return-object v0
.end method

.method static synthetic access$102(Lcom/biznessapps/fragments/notepad/NotepadEditFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/notepad/NotepadEditFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->shouldNotBeSaved:Z

    return p1
.end method

.method private initListeners()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->rightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->leftBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->sendMailBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->newNoteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    sget v0, Lcom/biznessapps/layout/R$id;->arrow_right:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->rightBtn:Landroid/widget/Button;

    .line 73
    sget v0, Lcom/biznessapps/layout/R$id;->arrow_left:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->leftBtn:Landroid/widget/Button;

    .line 74
    sget v0, Lcom/biznessapps/layout/R$id;->note_delete_btn:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->deleteBtn:Landroid/widget/Button;

    .line 75
    sget v0, Lcom/biznessapps/layout/R$id;->note_delete_btn:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->deleteBtn:Landroid/widget/Button;

    .line 76
    sget v0, Lcom/biznessapps/layout/R$id;->note_send_btn:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->sendMailBtn:Landroid/widget/Button;

    .line 77
    sget v0, Lcom/biznessapps/layout/R$id;->edit_note_add_note:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->newNoteBtn:Landroid/widget/ImageButton;

    .line 78
    sget v0, Lcom/biznessapps/layout/R$id;->day_name:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->dayString:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/biznessapps/layout/R$id;->full_date:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentDateString:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/biznessapps/layout/R$id;->edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    .line 81
    return-void
.end method

.method private loadNoteData(Lcom/biznessapps/fragments/notepad/NotepadItem;)V
    .locals 7
    .param p1, "item"    # Lcom/biznessapps/fragments/notepad/NotepadItem;

    .prologue
    .line 103
    if-eqz p1, :cond_1

    .line 106
    :try_start_0
    invoke-virtual {p1}, Lcom/biznessapps/fragments/notepad/NotepadItem;->getDate()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 108
    .local v1, "itemCalendar":Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/biznessapps/fragments/notepad/NotepadItem;->getDate()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 110
    .local v2, "todayCalendar":Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 111
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 113
    iget-object v3, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->dayString:Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->today:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentDateString:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "itemCalendar":Ljava/util/Calendar;
    .end local v2    # "todayCalendar":Ljava/util/Calendar;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/biznessapps/fragments/notepad/NotepadItem;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->updateNavigationButtons()V

    .line 125
    return-void

    .line 115
    .restart local v1    # "itemCalendar":Ljava/util/Calendar;
    .restart local v2    # "todayCalendar":Ljava/util/Calendar;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->dayString:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 119
    .end local v1    # "itemCalendar":Ljava/util/Calendar;
    .end local v2    # "todayCalendar":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private saveCurrentNote()V
    .locals 7

    .prologue
    .line 196
    iget-object v5, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    if-eqz v5, :cond_1

    .line 197
    iget-object v5, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    iget v6, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 198
    iget-object v5, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    iget-object v6, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setContent(Ljava/lang/String;)V

    .line 199
    iget-object v5, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    iget v6, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/fragments/notepad/NotepadItem;

    iget-object v6, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setContent(Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v1, "saveNoteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/notepad/NotepadItem;>;"
    iget-object v5, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/biznessapps/storage/StorageKeeper;->addNotes(Ljava/util/List;)V

    .line 223
    .end local v1    # "saveNoteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/notepad/NotepadItem;>;"
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v5, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "noteStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    new-instance v3, Lcom/biznessapps/fragments/notepad/NotepadItem;

    invoke-direct {v3}, Lcom/biznessapps/fragments/notepad/NotepadItem;-><init>()V

    .line 209
    .local v3, "tempNote":Lcom/biznessapps/fragments/notepad/NotepadItem;
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 210
    .local v4, "title":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 211
    invoke-virtual {v3, v4}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setTitle(Ljava/lang/String;)V

    .line 215
    :goto_1
    invoke-virtual {v3, v0}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setContent(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setDate(J)V

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v2, "saveNoteList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/notepad/NotepadItem;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/biznessapps/storage/StorageKeeper;->addNotes(Ljava/util/List;)V

    goto :goto_0

    .line 213
    .end local v2    # "saveNoteList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/notepad/NotepadItem;>;"
    :cond_2
    invoke-virtual {v3, v0}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setNewNoteData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    .line 148
    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->leftBtn:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$drawable;->arrow_left_disabled:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 149
    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->leftBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->rightBtn:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$drawable;->arrow_right_disabled:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 151
    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->rightBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->dayString:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->today:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentDateString:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showDeleteDialog()V
    .locals 3

    .prologue
    .line 234
    new-instance v1, Lcom/biznessapps/fragments/notepad/NotepadEditFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment$1;-><init>(Lcom/biznessapps/fragments/notepad/NotepadEditFragment;)V

    .line 246
    .local v1, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/biznessapps/layout/R$string;->delete_note:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 248
    sget v2, Lcom/biznessapps/layout/R$string;->yes:I

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    sget v2, Lcom/biznessapps/layout/R$string;->no:I

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 251
    return-void
.end method

.method private showSendNote()V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "emailIntent":Landroid/content/Intent;
    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "android.intent.extra.SUBJECT"

    sget v2, Lcom/biznessapps/layout/R$string;->my_note_email_title:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->noteEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "Send mail..."

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method

.method private updateNavigationButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    iget v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->rightBtn:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$drawable;->arrow_right:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 130
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->rightBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 132
    :cond_0
    iget v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    if-lez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->leftBtn:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$drawable;->arrow_left:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 134
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->leftBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    :cond_1
    iget v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->leftBtn:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$drawable;->arrow_left_disabled:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 138
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->leftBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    :cond_2
    iget v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 141
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->rightBtn:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$drawable;->arrow_right_disabled:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 142
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->rightBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    :cond_3
    return-void
.end method


# virtual methods
.method public loadData()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "NOTEPAD_NOTE_LIST"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    .line 93
    invoke-virtual {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EDIT_NOTE_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/fragments/notepad/NotepadItem;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    .line 94
    invoke-virtual {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LIST_POSITION_EXTRA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    .line 95
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->loadNoteData(Lcom/biznessapps/fragments/notepad/NotepadItem;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->setNewNoteData()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->deleteBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    if-eqz v0, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->showDeleteDialog()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->shouldNotBeSaved:Z

    .line 169
    invoke-virtual {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->sendMailBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 172
    invoke-direct {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->showSendNote()V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->newNoteBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 174
    invoke-direct {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->saveCurrentNote()V

    .line 175
    invoke-direct {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->setNewNoteData()V

    goto :goto_0

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->rightBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 177
    invoke-direct {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->saveCurrentNote()V

    .line 178
    iget v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    .line 179
    iget v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 180
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    iget v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/fragments/notepad/NotepadItem;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    .line 183
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->loadNoteData(Lcom/biznessapps/fragments/notepad/NotepadItem;)V

    goto :goto_0

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->leftBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->saveCurrentNote()V

    .line 186
    iget v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    .line 187
    iget v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    if-gez v0, :cond_7

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    .line 190
    :cond_7
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->notelist:Ljava/util/List;

    iget v1, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNotePosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/fragments/notepad/NotepadItem;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    .line 191
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->currentNote:Lcom/biznessapps/fragments/notepad/NotepadItem;

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->loadNoteData(Lcom/biznessapps/fragments/notepad/NotepadItem;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    sget v0, Lcom/biznessapps/layout/R$layout;->notepad_edit_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->root:Landroid/view/ViewGroup;

    .line 65
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->root:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 66
    invoke-direct {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->initListeners()V

    .line 67
    invoke-virtual {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->loadData()V

    .line 68
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onPause()V

    .line 256
    iget-boolean v0, p0, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->shouldNotBeSaved:Z

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/biznessapps/fragments/notepad/NotepadEditFragment;->saveCurrentNote()V

    .line 259
    :cond_0
    return-void
.end method
