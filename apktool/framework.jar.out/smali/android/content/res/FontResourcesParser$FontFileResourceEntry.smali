.class public final Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/FontResourcesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFileResourceEntry"
.end annotation


# static fields
.field public static final blacklist ITALIC:I = 0x1

.field public static final blacklist RESOLVE_BY_FONT_TABLE:I = -0x1

.field public static final blacklist UPRIGHT:I


# instance fields
.field private final greylist-max-o mFileName:Ljava/lang/String;

.field private greylist-max-o mItalic:I

.field private greylist-max-o mResourceId:I

.field private greylist-max-o mTtcIndex:I

.field private greylist-max-o mVariationSettings:Ljava/lang/String;

.field private greylist-max-o mWeight:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    iput p2, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mWeight:I

    iput p3, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mItalic:I

    iput-object p4, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    iput p5, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mTtcIndex:I

    return-void
.end method


# virtual methods
.method public greylist-max-o getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o getItalic()I
    .locals 0

    iget p0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mItalic:I

    return p0
.end method

.method public greylist-max-o getTtcIndex()I
    .locals 0

    iget p0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mTtcIndex:I

    return p0
.end method

.method public greylist-max-o getVariationSettings()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o getWeight()I
    .locals 0

    iget p0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mWeight:I

    return p0
.end method
