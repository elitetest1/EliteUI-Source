.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final greylist-max-r COLUMNS:I = 0x3

.field static final greylist-max-r EMPTY:[Ljava/lang/Object;

.field private static final greylist-max-r END:I = 0x1

.field private static final greylist-max-r FLAGS:I = 0x2

.field private static final greylist-max-r START:I


# instance fields
.field private greylist mSpanCount:I

.field private greylist mSpanData:[I

.field private greylist mSpans:[Ljava/lang/Object;

.field private greylist mText:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor greylist <init>(Ljava/lang/CharSequence;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/CharSequence;IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    :goto_0
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/text/SpannableStringInternal;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/text/SpannableStringInternal;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V

    return-void

    :cond_1
    check-cast p1, Landroid/text/Spanned;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpansFromSpanned(Landroid/text/Spanned;IIZ)V

    :cond_2
    return-void
.end method

.method private greylist checkRange(Ljava/lang/String;II)V
    .locals 3

    const-string v0, " "

    if-lt p3, p2, :cond_2

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result p0

    if-gt p2, p0, :cond_1

    if-gt p3, p0, :cond_1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " starts before 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ends beyond length "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has end before start"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-r copySpans(Landroid/text/SpannableStringInternal;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V

    return-void
.end method

.method private greylist-max-r copySpans(Landroid/text/Spanned;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpansFromSpanned(Landroid/text/Spanned;IIZ)V

    return-void
.end method

.method private blacklist copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V
    .locals 10

    iget-object v0, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v1, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v2, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_2

    mul-int/lit8 v7, v4, 0x3

    aget v8, v0, v7

    const/4 v9, 0x1

    add-int/2addr v7, v9

    aget v7, v0, v7

    invoke-direct {p0, p2, p3, v8, v7}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    aget-object v7, v1, v4

    instance-of v7, v7, Landroid/text/NoCopySpan;

    if-eqz v7, :cond_1

    move v6, v9

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    goto/16 :goto_4

    :cond_3
    if-nez v6, :cond_4

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/text/SpannableStringInternal;->length()I

    move-result v4

    if-ne p3, v4, :cond_4

    iget-object p2, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object p3, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length p3, p3

    new-array p3, p3, [I

    iput-object p3, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget p3, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iput p3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object p3, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length p4, p3

    invoke-static {p3, v3, p2, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length p2, p0

    invoke-static {p1, v3, p0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_4
    iput v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x3

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move p1, v3

    :goto_2
    if-ge v3, v2, :cond_9

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v0, v6

    invoke-direct {p0, p2, p3, v5, v6}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz p4, :cond_5

    aget-object v7, v1, v3

    instance-of v7, v7, Landroid/text/NoCopySpan;

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    if-ge v5, p2, :cond_6

    move v5, p2

    :cond_6
    if-le v6, p3, :cond_7

    move v6, p3

    :cond_7
    iget-object v7, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v8, v1, v3

    aput-object v8, v7, p1

    iget-object v7, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v8, p1, 0x3

    sub-int/2addr v5, p2

    aput v5, v7, v8

    add-int/lit8 v5, v8, 0x1

    sub-int/2addr v6, p2

    aput v6, v7, v5

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v4, v0, v4

    aput v4, v7, v8

    add-int/lit8 p1, p1, 0x1

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method private blacklist copySpansFromSpanned(Landroid/text/Spanned;IIZ)V
    .locals 11

    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    if-eqz p4, :cond_0

    aget-object v2, v0, v1

    instance-of v2, v2, Landroid/text/NoCopySpan;

    if-eqz v2, :cond_0

    move-object v5, p0

    goto :goto_1

    :cond_0
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    if-ge v2, p2, :cond_1

    move v2, p2

    :cond_1
    if-le v3, p3, :cond_2

    move v3, p3

    :cond_2
    aget-object v6, v0, v1

    sub-int v7, v2, p2

    sub-int v8, v3, p2

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object p0, v5

    goto :goto_0

    :cond_3
    return-void
.end method

.method private greylist-max-r isIndexFollowsNextLine(I)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result p0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final greylist-max-r isOutOfCopyRange(IIII)Z
    .locals 0

    const/4 p0, 0x1

    if-gt p3, p2, :cond_3

    if-ge p4, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p3, p4, :cond_2

    if-eq p1, p2, :cond_2

    if-eq p3, p2, :cond_1

    if-ne p4, p1, :cond_2

    :cond_1
    return p0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return p0
.end method

.method private static greylist region(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ... "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist sendSpanAdded(Ljava/lang/Object;II)V
    .locals 5

    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 5

    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-r setSpan(Ljava/lang/Object;IIIZ)V
    .locals 5

    const-string/jumbo v0, "setSpan"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    and-int/lit8 v0, p4, 0x33

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p2}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    const-string v1, ")"

    const-string v2, " follows "

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "PARAGRAPH span must start at paragraph boundary ("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p3}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p5, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "PARAGRAPH span must end at paragraph boundary ("

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget p5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p5, :cond_5

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_4

    mul-int/lit8 v3, v3, 0x3

    move v4, p4

    move p4, p2

    aget p2, v1, v3

    add-int/lit8 p5, v3, 0x1

    move v0, p5

    move p5, p3

    aget p3, v1, v0

    aput p4, v1, v3

    aput p5, v1, v0

    add-int/lit8 v3, v3, 0x2

    aput v4, v1, v3

    invoke-direct/range {p0 .. p5}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    return-void

    :cond_4
    move v4, p4

    move p4, p2

    move p2, p3

    add-int/lit8 v3, v3, 0x1

    move p2, p4

    move p4, v4

    goto :goto_0

    :cond_5
    move v4, p4

    move p4, p2

    move p2, p3

    iget p3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 p5, p3, 0x1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p5, v0, :cond_6

    invoke-static {p3}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result p3

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p3

    array-length p5, p3

    mul-int/lit8 p5, p5, 0x3

    new-array p5, p5, [I

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v0, v2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v0, v2, p5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iput-object p5, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    :cond_6
    iget-object p3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget p5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object p1, p3, p5

    iget-object p3, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v0, p5, 0x3

    aput p4, p3, v0

    mul-int/lit8 v0, p5, 0x3

    add-int/lit8 v0, v0, 0x1

    aput p2, p3, v0

    mul-int/lit8 v0, p5, 0x3

    add-int/lit8 v0, v0, 0x2

    aput v4, p3, v0

    add-int/lit8 p5, p5, 0x1

    iput p5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    instance-of p3, p0, Landroid/text/Spannable;

    if-eqz p3, :cond_7

    invoke-direct {p0, p1, p4, p2}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public final whitelist test-api charAt(I)C
    .locals 0

    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    array-length v4, v0

    if-ne v3, v4, :cond_5

    move v3, v1

    :goto_0
    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v3, v4, :cond_4

    aget-object v4, v2, v3

    aget-object v5, v0, v3

    if-ne v4, p0, :cond_1

    if-ne p1, v5, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    if-eq v4, v5, :cond_2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public final whitelist getChars(II[CI)V
    .locals 0

    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public greylist getSpanEnd(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getSpanFlags(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getSpanStart(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v3

    move v7, v6

    move-object v5, v4

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v0, :cond_a

    mul-int/lit8 v9, v6, 0x3

    aget v10, v2, v9

    add-int/lit8 v11, v9, 0x1

    aget v11, v2, v11

    if-le v10, p2, :cond_0

    goto/16 :goto_4

    :cond_0
    if-ge v11, p1, :cond_1

    goto :goto_4

    :cond_1
    if-eq v10, v11, :cond_3

    if-eq p1, p2, :cond_3

    if-ne v10, p2, :cond_2

    goto :goto_4

    :cond_2
    if-ne v11, p1, :cond_3

    goto :goto_4

    :cond_3
    if-eqz p3, :cond_4

    const-class v10, Ljava/lang/Object;

    if-eq p3, v10, :cond_4

    aget-object v10, v1, v6

    invoke-virtual {p3, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    if-nez v7, :cond_5

    aget-object v5, v1, v6

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    if-ne v7, v8, :cond_6

    sub-int v4, v0, v6

    add-int/2addr v4, v8

    invoke-static {p3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    :cond_6
    add-int/lit8 v9, v9, 0x2

    aget v8, v2, v9

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    move v10, v3

    :goto_2
    if-ge v10, v7, :cond_8

    aget-object v11, v4, v10

    invoke-virtual {p0, v11}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v11

    and-int/2addr v11, v9

    if-le v8, v11, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v8, v10, 0x1

    sub-int v9, v7, v10

    invoke-static {v4, v10, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v8, v1, v6

    aput-object v8, v4, v10

    goto :goto_1

    :cond_9
    add-int/lit8 v8, v7, 0x1

    aget-object v9, v1, v6

    aput-object v9, v4, v7

    move v7, v8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_a
    if-nez v7, :cond_b

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    if-ne v7, v8, :cond_c

    invoke-static {p3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    aput-object v5, p0, v3

    return-object p0

    :cond_c
    array-length p0, v4

    if-ne v7, p0, :cond_d

    return-object v4

    :cond_d
    invoke-static {p3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v4, v3, p0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq v2, p0, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final whitelist test-api length()I
    .locals 0

    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public greylist nextSpanTransition(IILjava/lang/Class;)I
    .locals 6

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    if-nez p3, :cond_0

    const-class p3, Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    mul-int/lit8 v3, v2, 0x3

    aget v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    aget v3, p0, v3

    if-le v4, p1, :cond_1

    if-ge v4, p2, :cond_1

    aget-object v5, v1, v2

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move p2, v4

    :cond_1
    if-le v3, p1, :cond_2

    if-ge v3, p2, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {p3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move p2, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method greylist removeSpan(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;I)V

    return-void
.end method

.method public greylist-max-o removeSpan(Ljava/lang/Object;I)V
    .locals 8

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v3, 0x3

    aget v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    add-int/lit8 v7, v3, 0x1

    sub-int/2addr v0, v7

    invoke-static {v1, v7, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v2, v7, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    and-int/lit16 p2, p2, 0x200

    if-nez p2, :cond_1

    invoke-direct {p0, p1, v5, v6}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method greylist setSpan(Ljava/lang/Object;III)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object p0
.end method
