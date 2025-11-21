.class interface abstract annotation Landroid/sec/enterprise/auditlog/AuditLogParams$DataType;
.super Ljava/lang/Object;
.source "AuditLogParams.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/auditlog/AuditLogParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2608
    name = "DataType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist FLOAT:I = 0x2

.field public static final blacklist INT:I = 0x0

.field public static final blacklist LONG:I = 0x1

.field public static final blacklist STRING:I = 0x3
