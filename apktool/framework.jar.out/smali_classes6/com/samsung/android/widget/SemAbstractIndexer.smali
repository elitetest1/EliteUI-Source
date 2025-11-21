.class public abstract Lcom/samsung/android/widget/SemAbstractIndexer;
.super Landroid/database/DataSetObserver;
.source "SemAbstractIndexer.java"


# static fields
.field private static final blacklist DIGIT_CHAR:C = '#'

.field public static final blacklist FAVORITE_CHAR:C = '\u2605'

.field private static final blacklist GROUP_CHAR:Ljava/lang/String; = "\ud83d\udc65\ufe0e"

.field private static final blacklist GROUP_CHECKER:C = '\ud83d'

.field protected static final blacklist INDEXSCROLL_INDEX_COUNTS:Ljava/lang/String; = "indexscroll_index_counts"

.field protected static final blacklist INDEXSCROLL_INDEX_TITLES:Ljava/lang/String; = "indexscroll_index_titles"

.field private static final blacklist SYMBOL_BASE_CHAR:C = '!'

.field private static final blacklist SYMBOL_CHAR:C = '&'

.field private static final blacklist debug:Z = false


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field protected blacklist mAlphaMap:Landroid/util/SparseIntArray;

.field protected blacklist mAlphabet:Ljava/lang/CharSequence;

.field protected blacklist mAlphabetArray:[Ljava/lang/String;

.field protected blacklist mAlphabetLength:I

.field private blacklist mBundle:Landroid/os/Bundle;

.field private blacklist mCachingValue:[I

.field protected blacklist mCollator:Ljava/text/Collator;

.field private blacklist mCurrentLang:I

.field private final blacklist mDataSetObservable:Landroid/database/DataSetObservable;

.field private blacklist mDigitItemCount:I

.field private blacklist mFavoriteItemCount:I

.field private blacklist mGroupItemCount:I

.field protected blacklist mLangAlphabetArray:[Ljava/lang/String;

.field private blacklist mLangIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProfileItemCount:I

.field private blacklist mRegisteredDataSetObservable:Z

.field private blacklist mUseDigitIndex:Z

.field private blacklist mUseFavoriteIndex:Z

.field private blacklist mUseGroupIndex:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;II)V
    .locals 2

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput p2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput p3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;III)V
    .locals 2

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "SemAbstractIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iput p3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iput p4, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    return-void
.end method

.method private blacklist getBundleInfo()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string v1, "indexscroll_index_titles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string v2, "indexscroll_index_counts"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v6, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    aput v2, v7, v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Get index info from bundle ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SemAbstractIndexer"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x2605

    if-ne v6, v7, :cond_0

    iget v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    :goto_1
    add-int/2addr v2, v7

    goto :goto_2

    :cond_0
    const v7, 0xd83d

    if-ne v6, v7, :cond_1

    iget v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    goto :goto_1

    :cond_1
    :goto_2
    move v7, v5

    :goto_3
    array-length v8, v0

    if-ge v7, v8, :cond_3

    aget-object v8, v0, v7

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v6, v8, :cond_2

    aget v5, v1, v7

    add-int/2addr v2, v5

    move v5, v7

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    const-string v7, "#"

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    sub-int/2addr v7, v8

    aput v7, v6, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private blacklist getPositionForString(Ljava/lang/String;)I
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    goto/16 :goto_b

    :cond_0
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move v5, v1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_3

    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-le v3, v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v4, :cond_3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    goto :goto_0

    :cond_3
    move v7, v2

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v6

    if-ge v5, v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/2addr v5, v6

    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ge v3, v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-eq v5, v4, :cond_4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    move v4, v7

    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x26

    if-ne v2, v7, :cond_5

    const-string v8, "!"

    goto :goto_3

    :cond_5
    move-object v8, p1

    :goto_3
    const/16 v9, 0x2605

    if-ne v2, v9, :cond_6

    iget v10, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    if-ge v4, v10, :cond_8

    move v4, v10

    goto :goto_4

    :cond_6
    const v10, 0xd83d

    if-ne v2, v10, :cond_7

    iget v10, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iget v11, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int v12, v10, v11

    if-ge v4, v12, :cond_8

    add-int v4, v10, v11

    goto :goto_4

    :cond_7
    iget v10, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    iget v11, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    add-int v12, v10, v11

    iget v13, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    add-int/2addr v12, v13

    if-ge v4, v12, :cond_8

    add-int/2addr v10, v11

    add-int v4, v10, v13

    :cond_8
    :goto_4
    iget v10, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    sub-int/2addr v5, v10

    const/16 v10, 0x23

    if-ne v2, v10, :cond_9

    move v4, v5

    :cond_9
    add-int v11, v5, v4

    div-int/lit8 v11, v11, 0x2

    :goto_5
    if-lt v11, v4, :cond_12

    if-ge v11, v5, :cond_12

    invoke-virtual {p0, v11}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_10

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {p0, v12, v8}, Lcom/samsung/android/widget/SemAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eq v2, v9, :cond_b

    if-eq v2, v7, :cond_b

    if-ne v2, v10, :cond_c

    :cond_b
    move v12, v6

    :cond_c
    if-eqz v12, :cond_e

    if-gez v12, :cond_f

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v1, :cond_d

    goto :goto_9

    :cond_d
    move v4, v11

    goto :goto_6

    :cond_e
    if-ne v4, v11, :cond_f

    goto :goto_8

    :cond_f
    move v5, v11

    :goto_6
    add-int v11, v4, v5

    div-int/lit8 v11, v11, 0x2

    goto :goto_5

    :cond_10
    :goto_7
    if-gt v11, v4, :cond_11

    goto :goto_8

    :cond_11
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_12
    :goto_8
    move v1, v11

    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p0, v6, :cond_13

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_13
    :goto_a
    return v1

    :cond_14
    :goto_b
    return v2
.end method

.method private blacklist initIndexer(Ljava/lang/CharSequence;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd83d

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    const-string/jumbo v2, "\ud83d\udc65\ufe0e"

    aput-object v2, v1, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1}, Ljava/text/Collator;->setStrength(I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid indexString :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist cacheIndexInfo()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "indexscroll_index_titles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mBundle:Landroid/os/Bundle;

    const-string v1, "indexscroll_index_counts"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->getBundleInfo()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onBeginTransaction()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->getPositionForString(Ljava/lang/String;)I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemAbstractIndexer;->onEndTransaction()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected blacklist compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method blacklist getAlphabetArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object p0
.end method

.method protected abstract blacklist getBundle()Landroid/os/Bundle;
.end method

.method public blacklist getCachingValue(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphabetLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCachingValue:[I

    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getCurrentLang()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    return p0
.end method

.method protected abstract blacklist getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract blacklist getItemCount()I
.end method

.method public blacklist getLangAlphabetArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getLangbyIndex(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method protected abstract blacklist isDataToBeIndexedAvailable()Z
.end method

.method public blacklist isUseDigitIndex()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    return p0
.end method

.method protected blacklist onBeginTransaction()V
    .locals 0

    return-void
.end method

.method public whitelist onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object p0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method protected blacklist onEndTransaction()V
    .locals 0

    return-void
.end method

.method public whitelist onInvalidated()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object p0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method public blacklist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Observer "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already registered."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemAbstractIndexer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setDigitItem(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDigitItemCount:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    iget p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    :cond_0
    return-void
.end method

.method public blacklist setFavoriteItem(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mFavoriteItemCount:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    iget p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    :cond_0
    return-void
.end method

.method public blacklist setGroupItem(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mGroupItemCount:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    iget p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->setMultiLangIndexer(I)V

    :cond_0
    return-void
.end method

.method public blacklist setMultiLangIndexer(I)V
    .locals 6

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mCurrentLang:I

    iget-boolean p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseFavoriteIndex:Z

    const/16 v0, 0x26

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseGroupIndex:Z

    const/16 v1, 0x2605

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xd83d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mUseDigitIndex:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public blacklist setProfileItem(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mProfileItemCount:I

    :cond_0
    return-void
.end method

.method public blacklist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer;->mRegisteredDataSetObservable:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Observer "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not registered."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemAbstractIndexer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
