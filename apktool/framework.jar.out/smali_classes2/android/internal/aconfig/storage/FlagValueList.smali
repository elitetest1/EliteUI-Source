.class public Landroid/internal/aconfig/storage/FlagValueList;
.super Ljava/lang/Object;
.source "FlagValueList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/aconfig/storage/FlagValueList$Header;
    }
.end annotation


# instance fields
.field private blacklist mHeader:Landroid/internal/aconfig/storage/FlagValueList$Header;

.field private blacklist mReader:Landroid/internal/aconfig/storage/ByteBufferReader;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagValueList;
    .locals 2

    new-instance v0, Landroid/internal/aconfig/storage/FlagValueList;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/FlagValueList;-><init>()V

    new-instance v1, Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-direct {v1, p0}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagValueList;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagValueList$Header;->fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagValueList$Header;

    move-result-object p0

    iput-object p0, v0, Landroid/internal/aconfig/storage/FlagValueList;->mHeader:Landroid/internal/aconfig/storage/FlagValueList$Header;

    return-object v0
.end method


# virtual methods
.method public blacklist getBoolean(I)Z
    .locals 1

    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagValueList;->mReader:Landroid/internal/aconfig/storage/ByteBufferReader;

    iget-object p0, p0, Landroid/internal/aconfig/storage/FlagValueList;->mHeader:Landroid/internal/aconfig/storage/FlagValueList$Header;

    invoke-static {p0}, Landroid/internal/aconfig/storage/FlagValueList$Header;->-$$Nest$fgetmBooleanValueOffset(Landroid/internal/aconfig/storage/FlagValueList$Header;)I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readByte(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getHeader()Landroid/internal/aconfig/storage/FlagValueList$Header;
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/FlagValueList;->mHeader:Landroid/internal/aconfig/storage/FlagValueList$Header;

    return-object p0
.end method

.method public blacklist size()I
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/FlagValueList;->mHeader:Landroid/internal/aconfig/storage/FlagValueList$Header;

    invoke-static {p0}, Landroid/internal/aconfig/storage/FlagValueList$Header;->-$$Nest$fgetmNumFlags(Landroid/internal/aconfig/storage/FlagValueList$Header;)I

    move-result p0

    return p0
.end method
