.class public final Landroid/graphics/ImageDecoder$DecodeException;
.super Ljava/io/IOException;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecodeException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageDecoder$DecodeException$Error;
    }
.end annotation


# static fields
.field public static final whitelist SOURCE_EXCEPTION:I = 0x1

.field public static final whitelist SOURCE_INCOMPLETE:I = 0x2

.field public static final whitelist SOURCE_MALFORMED_DATA:I = 0x3


# instance fields
.field final greylist-max-o mError:I

.field final greylist-max-o mSource:Landroid/graphics/ImageDecoder$Source;


# direct methods
.method constructor greylist-max-o <init>(ILjava/lang/String;Ljava/lang/Throwable;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p3}, Landroid/graphics/ImageDecoder$DecodeException;->errorMessage(ILjava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/graphics/ImageDecoder$DecodeException;->mError:I

    iput-object p4, p0, Landroid/graphics/ImageDecoder$DecodeException;->mSource:Landroid/graphics/ImageDecoder$Source;

    return-void
.end method

.method constructor greylist-max-o <init>(ILjava/lang/Throwable;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1

    invoke-static {p1, p2}, Landroid/graphics/ImageDecoder$DecodeException;->errorMessage(ILjava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/graphics/ImageDecoder$DecodeException;->mError:I

    iput-object p3, p0, Landroid/graphics/ImageDecoder$DecodeException;->mSource:Landroid/graphics/ImageDecoder$Source;

    return-void
.end method

.method private static greylist-max-o errorMessage(ILjava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "Input contained an error."

    return-object p0

    :cond_1
    const-string p0, "Input was incomplete."

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Exception in input: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist getError()I
    .locals 0

    iget p0, p0, Landroid/graphics/ImageDecoder$DecodeException;->mError:I

    return p0
.end method

.method public whitelist getSource()Landroid/graphics/ImageDecoder$Source;
    .locals 0

    iget-object p0, p0, Landroid/graphics/ImageDecoder$DecodeException;->mSource:Landroid/graphics/ImageDecoder$Source;

    return-object p0
.end method
