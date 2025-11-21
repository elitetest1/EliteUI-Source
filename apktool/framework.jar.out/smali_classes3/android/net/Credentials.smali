.class public Landroid/net/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# instance fields
.field private final greylist-max-o gid:I

.field private final greylist-max-o pid:I

.field private final greylist-max-o uid:I


# direct methods
.method public constructor whitelist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/Credentials;->pid:I

    iput p2, p0, Landroid/net/Credentials;->uid:I

    iput p3, p0, Landroid/net/Credentials;->gid:I

    return-void
.end method


# virtual methods
.method public whitelist getGid()I
    .locals 0

    iget p0, p0, Landroid/net/Credentials;->gid:I

    return p0
.end method

.method public whitelist getPid()I
    .locals 0

    iget p0, p0, Landroid/net/Credentials;->pid:I

    return p0
.end method

.method public whitelist getUid()I
    .locals 0

    iget p0, p0, Landroid/net/Credentials;->uid:I

    return p0
.end method
