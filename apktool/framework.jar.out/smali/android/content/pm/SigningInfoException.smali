.class public Landroid/content/pm/SigningInfoException;
.super Ljava/lang/Exception;
.source "SigningInfoException.java"


# instance fields
.field private final blacklist mCode:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/content/pm/SigningInfoException;->mCode:I

    return-void
.end method


# virtual methods
.method public whitelist getCode()I
    .locals 0

    iget p0, p0, Landroid/content/pm/SigningInfoException;->mCode:I

    return p0
.end method
