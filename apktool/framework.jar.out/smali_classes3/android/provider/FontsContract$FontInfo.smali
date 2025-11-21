.class public Landroid/provider/FontsContract$FontInfo;
.super Ljava/lang/Object;
.source "FontsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/FontsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontInfo"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private final greylist-max-o mItalic:Z

.field private final greylist-max-o mResultCode:I

.field private final greylist-max-o mTtcIndex:I

.field private final greylist-max-o mUri:Landroid/net/Uri;

.field private final greylist-max-o mWeight:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/net/Uri;I[Landroid/graphics/fonts/FontVariationAxis;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroid/provider/FontsContract$FontInfo;->mUri:Landroid/net/Uri;

    iput p2, p0, Landroid/provider/FontsContract$FontInfo;->mTtcIndex:I

    iput-object p3, p0, Landroid/provider/FontsContract$FontInfo;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iput p4, p0, Landroid/provider/FontsContract$FontInfo;->mWeight:I

    iput-boolean p5, p0, Landroid/provider/FontsContract$FontInfo;->mItalic:Z

    iput p6, p0, Landroid/provider/FontsContract$FontInfo;->mResultCode:I

    return-void
.end method


# virtual methods
.method public whitelist getAxes()[Landroid/graphics/fonts/FontVariationAxis;
    .locals 0

    iget-object p0, p0, Landroid/provider/FontsContract$FontInfo;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0
.end method

.method public whitelist getResultCode()I
    .locals 0

    iget p0, p0, Landroid/provider/FontsContract$FontInfo;->mResultCode:I

    return p0
.end method

.method public whitelist getTtcIndex()I
    .locals 0

    iget p0, p0, Landroid/provider/FontsContract$FontInfo;->mTtcIndex:I

    return p0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/provider/FontsContract$FontInfo;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist getWeight()I
    .locals 0

    iget p0, p0, Landroid/provider/FontsContract$FontInfo;->mWeight:I

    return p0
.end method

.method public whitelist isItalic()Z
    .locals 0

    iget-boolean p0, p0, Landroid/provider/FontsContract$FontInfo;->mItalic:Z

    return p0
.end method
