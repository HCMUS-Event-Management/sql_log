-- Add description
ALTER TABLE public.products ADD description text NULL;

-- Add images
ALTER TABLE public.products RENAME COLUMN thumbnail TO images;

-- Change constraint for product
ALTER TABLE public.products DROP CONSTRAINT "product_discount_range";
ALTER TABLE public.products ADD CONSTRAINT "product_discount_range" CHECK ((((0)::numeric <= discount) AND (discount <= (1)::numeric)));

-- Change constraint for proposal product
ALTER TABLE public.products DROP CONSTRAINT "product_discount_range";
ALTER TABLE public.products ADD CONSTRAINT "product_discount_range" CHECK ((((0)::numeric <= discount) AND (discount <= (1)::numeric)));