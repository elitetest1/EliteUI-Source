.class public final Landroid/media/MediaExtractor$CasInfo;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CasInfo"
.end annotation


# instance fields
.field private final blacklist mPrivateData:[B

.field private final greylist-max-o mSession:Landroid/media/MediaCas$Session;

.field private final greylist-max-o mSystemId:I


# direct methods
.method constructor blacklist <init>(ILandroid/media/MediaCas$Session;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/MediaExtractor$CasInfo;->mSystemId:I

    iput-object p2, p0, Landroid/media/MediaExtractor$CasInfo;->mSession:Landroid/media/MediaCas$Session;

    iput-object p3, p0, Landroid/media/MediaExtractor$CasInfo;->mPrivateData:[B

    return-void
.end method


# virtual methods
.method public whitelist getPrivateData()[B
    .locals 0

    iget-object p0, p0, Landroid/media/MediaExtractor$CasInfo;->mPrivateData:[B

    return-object p0
.end method

.method public whitelist getSession()Landroid/media/MediaCas$Session;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaExtractor$CasInfo;->mSession:Landroid/media/MediaCas$Session;

    return-object p0
.end method

.method public whitelist getSystemId()I
    .locals 0

    iget p0, p0, Landroid/media/MediaExtractor$CasInfo;->mSystemId:I

    return p0
.end method
