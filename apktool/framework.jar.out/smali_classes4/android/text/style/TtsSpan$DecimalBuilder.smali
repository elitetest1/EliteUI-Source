.class public Landroid/text/style/TtsSpan$DecimalBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecimalBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$DecimalBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    const-string v0, "android.type.decimal"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>(DII)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/TtsSpan$DecimalBuilder;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/style/TtsSpan$DecimalBuilder;->setArgumentsFromDouble(DII)Landroid/text/style/TtsSpan$DecimalBuilder;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/TtsSpan$DecimalBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$DecimalBuilder;->setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    return-void
.end method


# virtual methods
.method public whitelist setArgumentsFromDouble(DII)Landroid/text/style/TtsSpan$DecimalBuilder;
    .locals 0

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {p3, p4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    invoke-virtual {p3, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_0

    invoke-virtual {p1, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    return-object p0
.end method

.method public whitelist setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;
    .locals 1

    const-string v0, "android.arg.fractional_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$DecimalBuilder;

    return-object p0
.end method

.method public whitelist setIntegerPart(J)Landroid/text/style/TtsSpan$DecimalBuilder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$DecimalBuilder;
    .locals 1

    const-string v0, "android.arg.integer_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DecimalBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$DecimalBuilder;

    return-object p0
.end method
