.class public Landroid/widget/AlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "AlphabetIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private greylist-max-o mAlphaMap:Landroid/util/SparseIntArray;

.field protected whitelist mAlphabet:Ljava/lang/CharSequence;

.field private greylist-max-o mAlphabetArray:[Ljava/lang/String;

.field private greylist-max-o mAlphabetLength:I

.field private greylist-max-o mCollator:Ljava/text/Collator;

.field protected whitelist mColumnIndex:I

.field protected whitelist mDataCursor:Landroid/database/Cursor;


# direct methods
.method public constructor whitelist <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iput p2, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    iput-object p3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iput p2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    iget v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/util/SparseIntArray;

    iget v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    invoke-direct {p3, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p3, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1, p2}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method protected whitelist compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, " "

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public whitelist getPositionForSection(I)I
    .locals 10

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget-object v3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    if-gtz p1, :cond_1

    return v2

    :cond_1
    iget v3, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-lt p1, v3, :cond_2

    add-int/lit8 p1, v3, -0x1

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, -0x80000000

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    if-eq v7, v8, :cond_4

    if-gez v8, :cond_3

    neg-int v8, v8

    goto :goto_0

    :cond_3
    return v8

    :cond_4
    move v8, v4

    :goto_0
    if-lez p1, :cond_5

    iget-object v9, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v9, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v7, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    :cond_5
    add-int p1, v8, v2

    div-int/lit8 p1, p1, 0x2

    :goto_1
    if-ge p1, v8, :cond_b

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget v7, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v7, v6}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_9

    if-gez v7, :cond_a

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v4, :cond_8

    goto :goto_4

    :cond_8
    move v2, p1

    goto :goto_2

    :cond_9
    if-ne v2, p1, :cond_a

    goto :goto_3

    :cond_a
    move v8, p1

    :goto_2
    add-int p1, v2, v8

    div-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_b
    :goto_3
    move v4, p1

    :goto_4
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    return v4

    :cond_c
    :goto_5
    return v2
.end method

.method public whitelist getSectionForPosition(I)I
    .locals 3

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public whitelist getSections()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object p0
.end method

.method public whitelist onChanged()V
    .locals 0

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object p0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public whitelist onInvalidated()V
    .locals 0

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object p0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public whitelist setCursor(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object p0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
