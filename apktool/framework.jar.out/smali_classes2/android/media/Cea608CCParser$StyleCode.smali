.class Landroid/media/Cea608CCParser$StyleCode;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleCode"
.end annotation


# static fields
.field static final greylist-max-o COLOR_BLUE:I = 0x2

.field static final greylist-max-o COLOR_CYAN:I = 0x3

.field static final greylist-max-o COLOR_GREEN:I = 0x1

.field static final greylist-max-o COLOR_INVALID:I = 0x7

.field static final greylist-max-o COLOR_MAGENTA:I = 0x6

.field static final greylist-max-o COLOR_RED:I = 0x4

.field static final greylist-max-o COLOR_WHITE:I = 0x0

.field static final greylist-max-o COLOR_YELLOW:I = 0x5

.field static final greylist-max-o STYLE_ITALICS:I = 0x1

.field static final greylist-max-o STYLE_UNDERLINE:I = 0x2

.field static final greylist-max-o mColorMap:[Ljava/lang/String;


# instance fields
.field final greylist-max-o mColor:I

.field final greylist-max-o mStyle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    const-string v6, "MAGENTA"

    const-string v7, "INVALID"

    const-string v0, "WHITE"

    const-string v1, "GREEN"

    const-string v2, "BLUE"

    const-string v3, "CYAN"

    const-string v4, "RED"

    const-string v5, "YELLOW"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Cea608CCParser$StyleCode;->mColorMap:[Ljava/lang/String;

    return-void
.end method

.method constructor greylist-max-o <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    iput p2, p0, Landroid/media/Cea608CCParser$StyleCode;->mColor:I

    return-void
.end method

.method static greylist-max-o fromByte(B)Landroid/media/Cea608CCParser$StyleCode;
    .locals 3

    shr-int/lit8 v0, p0, 0x1

    const/4 v1, 0x7

    and-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-ne v0, v1, :cond_1

    or-int/lit8 p0, p0, 0x1

    move v0, v2

    :cond_1
    new-instance v1, Landroid/media/Cea608CCParser$StyleCode;

    invoke-direct {v1, p0, v0}, Landroid/media/Cea608CCParser$StyleCode;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method greylist-max-o getColor()I
    .locals 0

    iget p0, p0, Landroid/media/Cea608CCParser$StyleCode;->mColor:I

    return p0
.end method

.method greylist-max-o isItalics()Z
    .locals 1

    iget p0, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method greylist-max-o isUnderline()Z
    .locals 0

    iget p0, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/Cea608CCParser$StyleCode;->mColorMap:[Ljava/lang/String;

    iget v2, p0, Landroid/media/Cea608CCParser$StyleCode;->mColor:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, ", ITALICS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget p0, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const-string p0, ", UNDERLINE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
