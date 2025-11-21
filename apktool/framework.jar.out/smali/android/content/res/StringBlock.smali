.class public final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$StyleIDs;,
        Landroid/content/res/StringBlock$Height;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AssetManager"

.field private static final greylist-max-o localLOGV:Z = false


# instance fields
.field private greylist-max-o mNative:J

.field private blacklist mOpen:Z

.field private final greylist-max-o mOwnsNative:Z

.field private greylist-max-o mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStrings:[Ljava/lang/CharSequence;

.field greylist-max-o mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final greylist-max-o mUseSparse:Z


# direct methods
.method public constructor greylist <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor greylist-max-o <init>([BIIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor greylist-max-o <init>([BZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method private static greylist-max-o addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_0

    :cond_1
    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_3

    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    if-ge p3, v0, :cond_3

    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2

    :cond_3
    const/16 v0, 0x33

    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private blacklist applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;Z)Ljava/lang/CharSequence;
    .locals 10

    array-length v0, p2

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_6

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move p1, v0

    :goto_0
    array-length v2, p2

    if-ge p1, v2, :cond_5

    aget v2, p2, p1

    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetuniqueTextId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, p1, 0x1

    aget v3, p2, v2

    add-int/lit8 v4, p1, 0x2

    aget v5, p2, v4

    add-int/2addr v5, v1

    invoke-virtual {p4, v3, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/res/AssetManager;->getCustomizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, v3

    :cond_1
    aget v2, p2, v2

    aget v6, p2, v4

    add-int/2addr v6, v1

    invoke-virtual {p4, v2, v6, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    move v3, v0

    :goto_1
    array-length v5, p2

    if-ge v3, v5, :cond_4

    if-eq p1, v3, :cond_3

    add-int/lit8 v5, v3, 0x1

    aget v6, p2, v5

    aget v7, p2, v4

    if-lt v6, v7, :cond_2

    add-int/2addr v6, v2

    aput v6, p2, v5

    :cond_2
    add-int/lit8 v5, v3, 0x2

    aget v6, p2, v5

    aget v7, p2, v4

    if-lt v6, v7, :cond_3

    add-int/2addr v6, v2

    aput v6, p2, v5

    :cond_3
    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    :cond_5
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    new-instance p4, Landroid/text/SpannableString;

    invoke-direct {p4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move p1, v0

    :goto_2
    array-length v2, p2

    if-ge p1, v2, :cond_29

    aget v2, p2, p1

    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetboldId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    const/16 v4, 0x21

    if-ne v2, v3, :cond_7

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1, v2}, Landroid/text/style/StyleSpan;-><init>(II)V

    add-int/lit8 v2, p1, 0x1

    aget v2, p2, v2

    add-int/lit8 v5, p1, 0x2

    aget v5, p2, v5

    add-int/2addr v5, v1

    invoke-virtual {p4, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_7
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetitalicId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    const/4 v5, 0x2

    if-ne v2, v3, :cond_8

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v5, p1, 0x2

    aget v5, p2, v5

    add-int/2addr v5, v1

    invoke-virtual {p4, v2, v3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_8
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetunderlineId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_9

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v5, p1, 0x2

    aget v5, p2, v5

    add-int/2addr v5, v1

    invoke-virtual {p4, v2, v3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_9
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetttId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_a

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v5, p1, 0x2

    aget v5, p2, v5

    add-int/2addr v5, v1

    invoke-virtual {p4, v2, v3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_a
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetbigId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_b

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v5, p1, 0x2

    aget v5, p2, v5

    add-int/2addr v5, v1

    invoke-virtual {p4, v2, v3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_b
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsmallId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_c

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v5, p1, 0x2

    aget v5, p2, v5

    add-int/2addr v5, v1

    invoke-virtual {p4, v2, v3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_c
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsubId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_d

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v5, p1, 0x2

    aget v5, p2, v5

    add-int/2addr v5, v1

    invoke-virtual {p4, v2, v3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_d
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsupId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_e

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v5, p1, 0x2

    aget v5, p2, v5

    add-int/2addr v5, v1

    invoke-virtual {p4, v2, v3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_e
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetstrikeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_f

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v5, p1, 0x2

    aget v5, p2, v5

    add-int/2addr v5, v1

    invoke-virtual {p4, v2, v3, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_f
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetlistItemId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_10

    new-instance v2, Landroid/text/style/BulletSpan;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, p1, 0x2

    aget v4, p2, v4

    add-int/2addr v4, v1

    invoke-static {p4, v2, v3, v4}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_6

    :cond_10
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmarqueeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_11

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, p1, 0x2

    aget v4, p2, v4

    add-int/2addr v4, v1

    const/16 v5, 0x12

    invoke-virtual {p4, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_11
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmNoBreakId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    const/16 v6, 0x11

    if-ne v2, v3, :cond_12

    invoke-static {}, Landroid/text/style/LineBreakConfigSpan;->createNoBreakSpan()Landroid/text/style/LineBreakConfigSpan;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, p1, 0x2

    aget v4, p2, v4

    add-int/2addr v4, v1

    invoke-virtual {p4, v2, v3, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_12
    invoke-static {p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmNoHyphenId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v3

    if-ne v2, v3, :cond_13

    invoke-static {}, Landroid/text/style/LineBreakConfigSpan;->createNoHyphenationSpan()Landroid/text/style/LineBreakConfigSpan;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, p1, 0x2

    aget v4, p2, v4

    add-int/2addr v4, v1

    invoke-virtual {p4, v2, v3, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_13
    iget-wide v6, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v6, v7, v2}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    const-string v3, "font;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, ";height="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Landroid/content/res/StringBlock$Height;

    invoke-direct {v5, v3}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, p1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v1

    invoke-static {p4, v5, v3, v6}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    :cond_15
    const-string v3, ";size="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v3, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v6, p1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v1

    invoke-virtual {p4, v5, v3, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_16
    const-string v3, ";fgcolor="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-static {v3, v1}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v3

    add-int/lit8 v5, p1, 0x1

    aget v5, p2, v5

    add-int/lit8 v6, p1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v1

    invoke-virtual {p4, v3, v5, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_17
    const-string v3, ";color="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-static {v3, v1}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v3

    add-int/lit8 v5, p1, 0x1

    aget v5, p2, v5

    add-int/lit8 v6, p1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v1

    invoke-virtual {p4, v3, v5, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_18
    const-string v3, ";bgcolor="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-static {v3, v0}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v3

    add-int/lit8 v5, p1, 0x1

    aget v5, p2, v5

    add-int/lit8 v6, p1, 0x2

    aget v6, p2, v6

    add-int/2addr v6, v1

    invoke-virtual {p4, v3, v5, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_19
    const-string v3, ";face="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    new-instance v3, Landroid/text/style/TypefaceSpan;

    invoke-direct {v3, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p1, 0x1

    aget v2, p2, v2

    add-int/lit8 v5, p1, 0x2

    aget v5, p2, v5

    add-int/2addr v5, v1

    invoke-virtual {p4, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_1a
    const-string v3, "a;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, ";href="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    new-instance v3, Landroid/text/style/URLSpan;

    invoke-direct {v3, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p1, 0x1

    aget v2, p2, v2

    add-int/lit8 v5, p1, 0x2

    aget v5, p2, v5

    add-int/2addr v5, v1

    invoke-virtual {p4, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_1b
    const-string v3, "annotation;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x3b

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    :goto_3
    if-ge v6, v3, :cond_28

    const/16 v7, 0x3d

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-gez v7, :cond_1c

    goto/16 :goto_6

    :cond_1c
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-gez v8, :cond_1d

    move v8, v3

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Landroid/text/Annotation;

    invoke-direct {v9, v6, v7}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, p1, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, p1, 0x2

    aget v7, p2, v7

    add-int/2addr v7, v1

    invoke-virtual {p4, v9, v6, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v6, v8

    goto :goto_3

    :cond_1e
    const-string v3, "lineBreakConfig;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v3, ";style="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "AssetManager"

    const-string/jumbo v7, "none"

    const/4 v8, -0x1

    if-eqz v3, :cond_23

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    move v5, v0

    goto :goto_4

    :cond_1f
    const-string/jumbo v9, "normal"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    goto :goto_4

    :cond_20
    const-string v5, "loose"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    move v5, v1

    goto :goto_4

    :cond_21
    const-string/jumbo v5, "strict"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v5, 0x3

    goto :goto_4

    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Unknown LineBreakConfig style: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    move v5, v8

    :goto_4
    const-string v3, ";wordStyle="

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move v2, v0

    goto :goto_5

    :cond_24
    const-string/jumbo v3, "phrase"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v2, v1

    goto :goto_5

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Unknown LineBreakConfig word style: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    move v2, v8

    :goto_5
    if-ne v5, v8, :cond_27

    if-eq v2, v8, :cond_28

    :cond_27
    new-instance v3, Landroid/text/style/LineBreakConfigSpan;

    new-instance v6, Landroid/graphics/text/LineBreakConfig;

    invoke-direct {v6, v5, v2, v8}, Landroid/graphics/text/LineBreakConfig;-><init>(III)V

    invoke-direct {v3, v6}, Landroid/text/style/LineBreakConfigSpan;-><init>(Landroid/graphics/text/LineBreakConfig;)V

    add-int/lit8 v2, p1, 0x1

    aget v2, p2, v2

    add-int/lit8 v5, p1, 0x2

    aget v5, p2, v5

    add-int/2addr v5, v1

    invoke-virtual {p4, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_28
    :goto_6
    add-int/lit8 p1, p1, 0x3

    goto/16 :goto_2

    :cond_29
    new-instance p0, Landroid/text/SpannedString;

    invoke-direct {p0, p4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private static greylist-max-o getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-nez v0, :cond_2

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "color"

    const-string v3, "android"

    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz p1, :cond_0

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v2

    :cond_0
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    move v1, p0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object p0
.end method

.method private static native greylist-max-o nativeCreate([BII)J
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeGetSize(J)I
.end method

.method private static native greylist-max-o nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetStyle(JI)[I
.end method

.method private static greylist-max-o subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    const/16 p1, 0x3b

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-gez p1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/StringBlock;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/StringBlock;->close()V

    throw v0
.end method

.method public greylist get(I)Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public blacklist getSequence(I)Ljava/lang/CharSequence;
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    aget-object v0, v0, p1

    if-eqz v0, :cond_3

    monitor-exit p0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    monitor-exit p0

    return-object v0

    :cond_1
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v0

    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xfa

    if-le v0, v1, :cond_2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    :cond_3
    :goto_0
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    monitor-exit p0

    return-object v1

    :cond_4
    iget-wide v2, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v2, v3, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v2

    if-eqz v2, :cond_18

    iget-object v3, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v3, :cond_5

    new-instance v3, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v3}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v3, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    :cond_5
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_17

    aget v5, v2, v3

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetboldId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_16

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetitalicId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_16

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetunderlineId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_16

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetttId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_16

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetbigId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_16

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsmallId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_16

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsubId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_16

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsupId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_16

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetstrikeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_16

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetlistItemId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_16

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmarqueeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetuniqueTextId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v5, v6, :cond_7

    :goto_2
    move v4, v7

    goto/16 :goto_3

    :cond_7
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, v5}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    monitor-exit p0

    return-object v1

    :cond_8
    const-string v8, "b"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputboldId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_3

    :cond_9
    const-string v8, "i"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputitalicId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v8, "u"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputunderlineId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v8, "tt"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputttId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_3

    :cond_c
    const-string v8, "big"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputbigId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v8, "small"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsmallId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v8, "sup"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsupId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_3

    :cond_f
    const-string/jumbo v8, "sub"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsubId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_3

    :cond_10
    const-string/jumbo v8, "strike"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputstrikeId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_3

    :cond_11
    const-string v8, "li"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputlistItemId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_3

    :cond_12
    const-string/jumbo v8, "marquee"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmarqueeId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_3

    :cond_13
    const-string/jumbo v8, "nobreak"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmNoBreakId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_3

    :cond_14
    const-string/jumbo v8, "nohyphen"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmNoHyphenId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_3

    :cond_15
    const-string v8, "cst"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputuniqueTextId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_2

    :cond_16
    :goto_3
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_1

    :cond_17
    iget-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v0, v2, v1, v4}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;Z)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_18
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_19

    aput-object v0, v1, p1

    goto :goto_4

    :cond_19
    iget-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1a
    :goto_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
