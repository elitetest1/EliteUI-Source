.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
.super Ljava/lang/Object;
.source "DataMap.java"


# instance fields
.field public final blacklist mIds:[I

.field public final blacklist mNames:[Ljava/lang/String;

.field public final blacklist mTypes:[B


# direct methods
.method public constructor blacklist <init>([Ljava/lang/String;[B[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mTypes:[B

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mIds:[I

    return-void
.end method


# virtual methods
.method public blacklist getId(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mIds:[I

    aget p0, p0, p1

    return p0
.end method

.method public blacklist getPos(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getType(I)B
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mTypes:[B

    aget-byte p0, p0, p1

    return p0
.end method
