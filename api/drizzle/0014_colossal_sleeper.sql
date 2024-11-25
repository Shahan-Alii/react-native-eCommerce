-- ALTER TABLE "order_items" RENAME COLUMN "order_id" TO "orderd";--> statement-breakpoint
-- ALTER TABLE "order_items" RENAME COLUMN "product_id" TO "productd";--> statement-breakpoint
-- ALTER TABLE "orders" RENAME COLUMN "created_at" TO "created";--> statement-breakpoint
-- ALTER TABLE "orders" RENAME COLUMN "order_number" TO "ordernumber";--> statement-breakpoint
-- ALTER TABLE "orders" RENAME COLUMN "user_id" TO "userd";--> statement-breakpoint
-- ALTER TABLE "order_items" DROP CONSTRAINT "order_items_order_id_orders_id_fk";
-- --> statement-breakpoint
-- ALTER TABLE "order_items" DROP CONSTRAINT "order_items_product_id_products_id_fk";
-- --> statement-breakpoint
-- ALTER TABLE "orders" DROP CONSTRAINT "orders_user_id_users_id_fk";
-- --> statement-breakpoint
-- DO $$ BEGIN
--  ALTER TABLE "order_items" ADD CONSTRAINT "order_items_orderd_orders_id_fk" FOREIGN KEY ("orderd") REFERENCES "public"."orders"("id") ON DELETE no action ON UPDATE no action;
-- EXCEPTION
--  WHEN duplicate_object THEN null;
-- END $$;
-- --> statement-breakpoint
-- DO $$ BEGIN
--  ALTER TABLE "order_items" ADD CONSTRAINT "order_items_productd_products_id_fk" FOREIGN KEY ("productd") REFERENCES "public"."products"("id") ON DELETE no action ON UPDATE no action;
-- EXCEPTION
--  WHEN duplicate_object THEN null;
-- END $$;
-- --> statement-breakpoint
-- DO $$ BEGIN
--  ALTER TABLE "orders" ADD CONSTRAINT "orders_userd_users_id_fk" FOREIGN KEY ("userd") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;
-- EXCEPTION
--  WHEN duplicate_object THEN null;
-- END $$;
